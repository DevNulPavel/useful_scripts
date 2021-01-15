#!/usr/bin/env bash

for FILE in *.m4a; do
    ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.m4a}.mp3";
done