FROM linuxserver/ffmpeg:latest AS
FROM alpine:latest

ENV FFMPEG_VERSION=4.0

RUN apk add --no-cache bash ffmpeg

RUN mkdir /usr/src/app -p
WORKDIR /usr/src/app/

ADD . /usr/src/app/
CMD ./stream.sh
