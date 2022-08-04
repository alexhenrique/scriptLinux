#!/bin/bash
mkdir saidaMp3
for f in *.mp4
do
    name=`echo "$f" | sed -e "s/.mp4$//g"`
    ffmpeg -i "$f" -vn -ar 44100 -ac 2 -ab 64k -f mp3 "saidaMp3/${f%.mp4}.mp3"
done