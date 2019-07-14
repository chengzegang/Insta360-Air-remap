ffmpeg -r 30 -i ./demovids/input_side1.mp4 -i xmap.pgm -i ymap.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap,vflip,hflip" -vcodec h264_omx -b:v 8000000 ./demovids/output_side1.mp4

