ffmpeg -r 30 -copytb 0 -f v4l2 -vcodec h264 -i /dev/video0  -i ./Insta360-Air-remap/xmap.pgm -i ./Insta360-Air-remap/ymap.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap" -vcodec h264_omx -b:v 6000000 otf.mp4

