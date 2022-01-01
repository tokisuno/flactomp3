#!/bin/sh

mkdir mp3/

for file in *.flac; do ffmpeg -y -i *.flac -ab 320k -map_metadata 0 -id3v2_version 3 "${file%.flac}.mp3"; mv *.mp3 mp3/;

done
