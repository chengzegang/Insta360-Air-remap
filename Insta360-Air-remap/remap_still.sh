ffmpeg -r 30 -i ./demopics/insta360-still-001.png -i xmap.pgm -i ymap.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap" -f image2  ./demopics/insta360_still-001_basic.jpg

