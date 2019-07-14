# Insta360-Air-remap
<img src="/Insta360-Air-remap/pictures/input.gif" width="400"> ➡️ <img src="/Insta360-Air-remap/pictures/output.gif" width="400">

This code generates remapping projections for [ffmpeg](http://ffmpeg.org) to convert from dual-fish-eye images/video (spherical) to equirectangular output. It can be used to map both images and video.

The code was adapted from examples given for ffmpeg's [`RemapFilter`](https://trac.ffmpeg.org/wiki/RemapFilter), with added support for video captured with Insta360 Air devices.


## Guide

### Building

1. Install ffmpeg, (make sure it's a recent version)
2. Checkout the source of this repository
3. Build: `gcc projection.c -lm -o project` 

### Running

#### 1.) Create remapping lookup-tables xmap.pgm and ymap.pgm:

```
$ ./project -x xmap.pgm -y ymap.pgm -h 960 -w 960 -c 1920 -r 960 -m theta --verbose
```
This creates two ASCII encoded [PGM files](https://en.wikipedia.org/wiki/Netpbm_format#PGM_example) which act as a lookup table for ffmpeg to remap the video.

#### 2.) Apply the maps to the video:

```
$ ffmpeg -i input.mp4 -i xmap.pgm -i ymap.pgm -q 0 -lavfi "format=pix_fmts=rgb24,remap" remapped.mp4
```

There are various pre-generated lookup tables included:

1) camera in uptight position (USB connector down)
run: `./remap_vid_down.sh`

      <img src="/Insta360-Air-remap/pictures/insta360down.png" width="60"> <img src="/Insta360-Air-remap/demopics/insta360-still-001.png" width="300"> ➡️ <img src="/Insta360-Air-remap/demopics/insta360-still-001_down.jpg" width="300">

2) camera in hanging position (USB connector up)
run: `./remap_vid_up.sh`

      <img src="/Insta360-Air-remap/pictures/insta360up.png" width="60"> <img src="/Insta360-Air-remap/demopics/insta360-still-001.png" width="300"> ➡️ <img src="/Insta360-Air-remap/demopics/insta360-still-001_up.jpg" width="300">

3) camera placed sideways (USB connector right or left)
run: `./remap_vid.sh`
      
      <img src="/Insta360-Air-remap/pictures/insta360side.png" width="60"> <img src="/Insta360-Air-remap/demopics/insta360-still-001.png" width="300"> ➡️ <img src="/Insta360-Air-remap/demopics/insta360_still-001_basic.jpg" width="300">

### Known issues
The Lens mapping isn't perfect, I'm working on getting a more accurate mapping.

Stabilizing output videos via  Hugin with [Matthew Petroff's method](https://mpetroff.net/2016/11/stabilizing-360-video-with-hugin/) reveals a wobble that would not be present if the mapping was perfect; Convieniently, I think i can use Hugin's Lens Calibration tools on the source frames to find a better mapping.

### Useful Things for Spherical Video
#### Tag for upload

If you want to upload your video to youtube as a 360 video, make sure you encoded it as a .mp4, and use [this](https://github.com/google/spatial-media) tool from google. On linux, you can install `python-tk` and use the gui, or use it via command line. 

The instructions there say to run `python spatialmedia` but there isn't anything called that, so replace `spatialmedia` with `__main__.py` and it works.
```
python __main__.py -i remapped.mp4 remapped_injected.mp4
```
Your file is now ready for YouTube/etc.
