#!/usr/bin/env bash

for FILE in *.mkv; do
    ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.mkv}.mp3";
done