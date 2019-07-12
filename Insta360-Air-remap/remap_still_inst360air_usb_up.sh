ffmpeg -r 30 -i insta360_1.png -i xmap_insta360air_usb_up.pgm -i ymap_insta360air_usb_up.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap" -f image2  insta360_1_up.jpg

