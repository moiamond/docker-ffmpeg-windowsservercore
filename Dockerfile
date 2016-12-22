FROM moiamond/ffmpeg-base-windowsservercore:0.1
MAINTAINER moiamond@gmail.com

COPY bin c:/ffmpeg/

RUN setx /M PATH "%PATH%;c:\\ffmpeg"


