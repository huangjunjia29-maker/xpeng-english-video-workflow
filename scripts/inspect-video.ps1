param(
  [Parameter(Mandatory = $true)][string]$InputPath,
  [Parameter(Mandatory = $true)][string]$OutputPath
)

$ErrorActionPreference = "Stop"
if (-not (Test-Path -LiteralPath $InputPath)) { throw "Input video not found: $InputPath" }
$json = ffprobe -v error -show_entries format=filename,duration,size,bit_rate:stream=index,codec_type,codec_name,width,height,r_frame_rate,avg_frame_rate,sample_rate,channels -of json -- "$InputPath"
$json | Set-Content -LiteralPath $OutputPath -Encoding utf8
Write-Output "Wrote metadata: $OutputPath"

