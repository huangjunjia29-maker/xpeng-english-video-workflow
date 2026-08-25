param(
  [Parameter(Mandatory = $true)][string]$InputPath,
  [Parameter(Mandatory = $true)][string]$OutputPath,
  [Parameter(Mandatory = $true)][string]$Line1,
  [Parameter(Mandatory = $true)][string]$Line2
)

$ErrorActionPreference = "Stop"
if (-not (Test-Path -LiteralPath $InputPath)) { throw "Input video not found: $InputPath" }
$font = "C:/Windows/Fonts/Arial.ttf"
$line1Esc = $Line1.Replace("'", "\\'").Replace(":", "\\:")
$line2Esc = $Line2.Replace("'", "\\'").Replace(":", "\\:")
$draw = "drawtext=fontfile='$font':text='$line1Esc':fontcolor=white:fontsize=58:borderw=2:bordercolor=black:x=(w-text_w)/2:y=48,drawtext=fontfile='$font':text='$line2Esc':fontcolor=yellow:fontsize=48:borderw=2:bordercolor=black:x=(w-text_w)/2:y=118"
ffmpeg -y -i "$InputPath" -vf "$draw" -c:v libx264 -preset medium -crf 18 -c:a copy -movflags +faststart "$OutputPath"
Write-Output "Rendered: $OutputPath"

