FROM moiamond/ffmpeg-base-windowsservercore
MAINTAINER moiamond@gmail.com


SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

ENV FFMPEG_VERSION 3.2.4

RUN Invoke-WebRequest $('https://ffmpeg.zeranoe.com/builds/win64/shared/ffmpeg-{0}-win64-shared.zip' -f $env:FFMPEG_VERSION) -OutFile 'ffmpeg.zip' -UseBasicParsing ; \
    Expand-Archive ffmpeg.zip -DestinationPath C:\ ; \
    $env:PATH = 'C:\ffmpeg-{0}-win64-shared\bin;{1}' -f $env:FFMPEG_VERSION, $env:PATH ; \
    [Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine) ; \
    Remove-Item -Path ffmpeg.zip ;
