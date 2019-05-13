#!/bin/bash

# note: uses GNU parallel

function process_files(){
	file="$1"
	mediainfo --Inform="Video;%Codec%" $file
	echo $video
	extension="${file##*.}"                     	# get the extension
	filename="${file%.*}"                       	# get the filename
	# mv "$file" "${filename}.oldfile.${extension}"    # rename file by moving it
	# ffmpeg -y -i "${filename}.oldfile.${extension}" -c:v libx264 -crf 18 -c:a aac -brand mp41 "$filename".mp4 && rm "${filename}.oldfile.${extension}"
}

export -f process_files

find . -type f -iregex ".*/.*\.\(webm\|avi\|mp4\|mkv\|wmv\|flv\|wav\|vob\)" | parallel process_files