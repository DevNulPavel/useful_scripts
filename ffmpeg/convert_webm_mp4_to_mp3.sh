#!/usr/bin/env bash

for FILE in *.{webm,mp4}; do
    ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.webm}.mp3";
done