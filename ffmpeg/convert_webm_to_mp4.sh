#!/usr/bin/env bash

for FILE in *.webm; do
    ffmpeg -i "${FILE}" -vcodec h264_videotoolbox -y "${FILE%.webm}.mp4";
done