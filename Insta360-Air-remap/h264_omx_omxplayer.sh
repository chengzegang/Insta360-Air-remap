#mkfifo fifo.mp4
ffmpeg -r 30 -i input.mp4 -i xmap.pgm -i ymap.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap" -vcodec h264_omx -f h264 pipe:1 > fifo.mp4 &  omxplayer fifo.mp4 
#ffmpeg -r 30 -copytb 0 -f v4l2 -vcodec h264 -i /dev/video0 -i xmap.pgm -i ymap.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap" -vcodec h264_omx -f h264 pipe:1 > fifo.mp4 & omxplayer fifo.mp4



