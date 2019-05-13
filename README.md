# command-line video reformatter

converts video files to most common TV USB filetype

* mp4 container
* avc video
* aac audio
* brand mp41

## requirements

* ffmpeg
* parallel

I tested it on Ubuntu 18.10, YMMV

## how to use

* download and place in your path
* make the file executable: `chmod +x video_reformatter.sh`
* using a terminal, navigate to the folder containing your video files
* run with `video_reformatter.sh`

## warning - this deletes the original after conversion

You cna stop this by 