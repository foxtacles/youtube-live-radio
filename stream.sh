#!/bin/bash

set -e

while true
do
  ffmpeg -loglevel error -y -re \
    -f image2 -loop 1 -i bg.png \
    -f concat -safe 0 -i <((for f in ./mp3/*.mp3; do path="$PWD/$f"; echo "file ${path@Q}"; done) | shuf) \
    -codec:a aac -b:a 128k -ar 44100 -maxrate 5000k -bufsize 2500k -shortest -strict experimental -q:v 5 \
    -f flv rtmp://a.rtmp.youtube.com/live2/$YOUTUBE_KEY
done
