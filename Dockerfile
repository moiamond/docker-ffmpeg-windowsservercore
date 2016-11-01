FROM moiamond/ffmpeg-base-windowsservercore:0.1
MAINTAINER moiamond@gmail.com

COPY bin c:/workdir/

WORKDIR c:\\workdir
CMD         ["--help"]
ENTRYPOINT  ["ffmpeg"]
