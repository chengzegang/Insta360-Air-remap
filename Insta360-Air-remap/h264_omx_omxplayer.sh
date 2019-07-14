mkfifo fifo.mp4
ffmpeg -r 30 -i ./demovids/input_side1.mp4 -i xmap.pgm -i ymap.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap" -vcodec h264_omx -f h264 pipe:1 > fifo.mp4 &  omxplayer fifo.mp4 



