ffmpeg -r 30 -i ./demopics/insta360-still-001.png -i xmap_rotate.pgm -i ymap_rotate.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap" -f image2  ./demopics/rotate.jpg
ffmpeg -r 30 -i ./demopics/rotate.jpg -i xmap.pgm -i ymap.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap,vflip,hflip" -f image2 ./demopics/insta360-still-001_down.jpg
