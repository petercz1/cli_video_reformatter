# command-line video reformatter

converts video files to the most common TV USB filetype

* mp4 container
* avc video
* aac audio
* brand mp41

## requirements

* [ffmpeg](https://ffmpeg.org/)
* [parallel](https://www.gnu.org/software/parallel/)

I wrote it on Ubuntu 18.10, YMMV

## how to use

* download and place in your path
* make the file executable: `chmod +x video_reformatter.sh`
* using a terminal, navigate to the folder containing your video files
* run with `video_reformatter.sh`

## output

I'm using a `crf` (constant rate factor) of 23 which gives me adequate resolution and a preset of `veryslow` to make the output as small as possible. Some people prefer a higher crf eg 18 for better quality. Veryslow takes a while. I'm also scaling to Adjust to taste.

## warning - this deletes the original after conversion

You can stop this by commenting out/deleting the end of line 10:

`# && rm "${filename}.oldfile.${extension}"`