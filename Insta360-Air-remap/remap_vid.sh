ffmpeg -r 30 -i input.mp4 -i xmap.pgm -i ymap.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap" -vcodec h264_omx -b:v 6000000 output.mp4

