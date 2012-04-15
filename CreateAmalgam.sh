#!/bin/bash

# NOTE: The initial working directory must be
#       in the same location as the script

SRC=Taglib/taglib

OPTS=(
  -i "Taglib/taglib" -w "*.c;*.cpp;*.h;*.hpp;*.tcc" -s
  -i "Taglib/taglib/toolkit"
  -i "Taglib/taglib/asf"
  -i "Taglib/taglib/mpeg"
  -i "Taglib/taglib/ogg"
  -i "Taglib/taglib/ogg/flac"
  -i "Taglib/taglib/flac"
  -i "Taglib/taglib/mpc"
  -i "Taglib/taglib/mp4"
  -i "Taglib/taglib/ogg/vorbis"
  -i "Taglib/taglib/ogg/speex"
  -i "Taglib/taglib/mpeg/id3v2"
  -i "Taglib/taglib/mpeg/id3v2/frames"
  -i "Taglib/taglib/mpeg/id3v1"
  -i "Taglib/taglib/ape"
  -i "Taglib/taglib/wavpack"
  -i "Taglib/taglib/trueaudio"
  -i "Taglib/taglib/riff"
  -i "Taglib/taglib/riff/aiff"
  -i "Taglib/taglib/riff/wav"
  -i "Taglib/taglib/mod"
  -i "Taglib/taglib/s3m"
  -i "Taglib/taglib/it"
  -i "Taglib/taglib/xm")

Amalgamate "${OPTS[@]}" templates/TagLibAmalgamTemplate.h TagLibAmalgam/TagLibAmalgam.h
Amalgamate "${OPTS[@]}" templates/TagLibAmalgamTemplate.cpp TagLibAmalgam/TagLibAmalgam.cpp

cd TagLib
git log --date=short --format=format:'%H %ad %s' > ../TagLibAmalgam/COMMITLOG



..\..\Taglib\taglib;
..\..\Taglib\taglib\toolkit;
..\..\Taglib\taglib\asf;
..\..\Taglib\taglib\mpeg;
..\..\Taglib\taglib\ogg;
..\..\Taglib\taglib\ogg\flac;
..\..\Taglib\taglib\flac;
..\..\Taglib\taglib\mpc;
..\..\Taglib\taglib\mp4;
..\..\Taglib\taglib\ogg\vorbis;
..\..\Taglib\taglib\ogg\speex;
..\..\Taglib\taglib\mpeg\id3v2;
..\..\Taglib\taglib\mpeg\id3v2\frames;
..\..\Taglib\taglib\mpeg\id3v1;
..\..\Taglib\taglib\ape;
..\..\Taglib\taglib\wavpack;
..\..\Taglib\taglib\trueaudio;
..\..\Taglib\taglib\riff;
..\..\Taglib\taglib\riff\aiff;
..\..\Taglib\taglib\riff\wav;
..\..\Taglib\taglib\mod;
..\..\Taglib\taglib\s3m;
..\..\Taglib\taglib\it;
..\..\Taglib\taglib\xm
