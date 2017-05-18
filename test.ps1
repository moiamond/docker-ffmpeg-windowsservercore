Write-Host Starting test

$ErrorActionPreference = 'Stop';
Write-Host Testing container
docker run --rm moiamond/ffmpeg-windowsservercore ffmpeg