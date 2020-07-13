#!/usr/bin/env bash

scale_val=2.5
mkdir -p scaled
for i in *.mp4;
	do echo "$i";
	ffmpeg -i "$i" -vf "scale=iw/$scale_val:ih/$scale_val" "scaled/$i" -y;
	# do name=`echo "$i" | cut -d'.' -f1`
	# echo "$name"
done