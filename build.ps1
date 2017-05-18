$ErrorActionPreference = 'Stop';
$files = ""
Write-Host Starting build

Write-Host Updating base images
docker moiamond/ffmpeg-base-windowsservercore

docker build -t moiamond/ffmpeg-windowsservercore .

docker images