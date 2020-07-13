#!/usr/bin/env bash

#URL="https://edge109.stream.highwebmedia.com/live-hls/amlst:finleyfae-sd-db64b8c4b93315cc8b806adac4701217cc6678b26c393065a4d6a51a56a22c2f_trns_h264/playlist.m3u8"
RES="res.mp4"

# -c copy 
# -vcodec copy -acodec copy
# -map p:1 выбирает качесво
# -crf 50

# $URL
ffmpeg -i $1 -bufsize 100k -acodec copy -vcodec copy -c copy $RES -y