param(
  [Parameter(Mandatory = $true)][string]$InputPath,
  [Parameter(Mandatory = $true)][string]$OutputPath,
  [string]$Headline,
  [string]$Line1,
  [string]$Line2
)

$ErrorActionPreference = "Stop"
if (-not (Test-Path -LiteralPath $InputPath)) { throw "Input video not found: $InputPath" }
$singleLine = -not [string]::IsNullOrWhiteSpace($Headline)
if (-not $singleLine -and ([string]::IsNullOrWhiteSpace($Line1) -or [string]::IsNullOrWhiteSpace($Line2))) {
  throw "Provide -Headline for a preferred single-line title, or both -Line1 and -Line2 for legacy two-line rendering."
}
$font = "Arial"
$smartQuote = [string][char]0x2019
if ($singleLine) {
  $headlineEsc = $Headline.Replace("'", $smartQuote).Replace(":", "\\:")
  $length = [math]::Max(1, $Headline.Length)
  $fontSize = [math]::Max(28, [math]::Min(58, [math]::Floor(1180 / $length)))
  $draw = "drawtext=font='$font':text='$headlineEsc':fontcolor=white:fontsize=$fontSize`:borderw=2:bordercolor=black@0.55:shadowx=2:shadowy=2:shadowcolor=black@0.30:x=(w-text_w)/2:y=88"
} else {
  $line1Esc = $Line1.Replace("'", $smartQuote).Replace(":", "\\:")
  $line2Esc = $Line2.Replace("'", $smartQuote).Replace(":", "\\:")
  $draw = "drawtext=font='$font':text='$line1Esc':fontcolor=white:fontsize=58:borderw=2:bordercolor=black:x=(w-text_w)/2:y=48,drawtext=font='$font':text='$line2Esc':fontcolor=yellow:fontsize=48:borderw=2:bordercolor=black:x=(w-text_w)/2:y=118"
}
ffmpeg -y -i "$InputPath" -vf "$draw" -c:v libx264 -preset medium -crf 18 -c:a copy -movflags +faststart "$OutputPath"
if ($LASTEXITCODE -ne 0 -or -not (Test-Path -LiteralPath $OutputPath)) {
  throw "FFmpeg title render failed: $OutputPath"
}
Write-Output "Rendered: $OutputPath"
