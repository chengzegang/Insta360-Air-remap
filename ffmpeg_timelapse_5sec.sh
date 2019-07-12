ffmpeg -r 30 -copytb 0 -f v4l2 -vcodec h264 -i /dev/video0 -vf fps=12/60 still%d.jpg

