ffmpeg -i input.mp4 -i xmap.pgm -i ymap.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap" -f rawvideo - | ffplay -

