#!/usr/bin/env bash

for FILE in *.mp4; do
    ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.mp4}.mp3";
done