ffmpeg -r 30 -i insta360_1.png -i xmap.pgm -i ymap.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap" -f image2  insta360_1.jpg

