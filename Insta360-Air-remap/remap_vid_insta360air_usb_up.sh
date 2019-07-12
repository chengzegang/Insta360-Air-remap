ffmpeg -r 30 -i input.mp4 -i xmap_insta360air_usb_up.pgm -i ymap_insta360air_usb_up.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap" -vcodec h264_omx -b:v 6000000 output_up.mp4

