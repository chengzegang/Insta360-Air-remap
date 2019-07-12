ffmpeg -r 30 -copytb 0 -f v4l2 -vcodec h264 -i /dev/video0 -vcodec h264_omx -b:v 6000000 omx4.mp4

