#!/usr/bin/env bash

# -crf - quality from 0 to 55, 0 it is loseless
for FILE in *.mkv; do
    ffmpeg -i "${FILE}" -vb 1200 -vcodec h264_videotoolbox -y "${FILE%.mkv}.mp4";
done