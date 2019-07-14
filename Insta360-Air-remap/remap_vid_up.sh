ffmpeg -r 30 -i ./demovids/input_down1.mp4 -i xmap_rotate.pgm -i ymap_rotate.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap" -vcodec h264 -b:v 8000000 ./demovids/rotate.mp4
ffmpeg -r 30 -i ./demovids/rotate.mp4 -i xmap.pgm -i ymap.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap,hflip" -vcodec h264 -b:v 8000000 ./demovids/output_up1.mp4
