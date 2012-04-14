#!/bin/sh

# NOTE: The initial working directory must be
#       in the same location as the script

DEST=JUCEAmalgam/include
OPTS='-i JUCE -w "*.c;*.cpp;*.h;*.hpp;*.m;*.mm"'

Amalgamate $OPTS templates/juce_audio_basics_amalgam_template.h $DEST/juce_audio_basics_amalgam.h
Amalgamate $OPTS templates/juce_audio_devices_amalgam_template.h $DEST/juce_audio_devices_amalgam.h
Amalgamate $OPTS templates/juce_audio_formats_amalgam_template.h $DEST/juce_audio_formats_amalgam.h
Amalgamate $OPTS templates/juce_audio_processors_amalgam_template.h $DEST/juce_audio_processors_amalgam.h
Amalgamate $OPTS templates/juce_audio_utils_amalgam_template.h $DEST/juce_audio_utils_amalgam.h
Amalgamate $OPTS templates/juce_core_amalgam_template.h $DEST/juce_core_amalgam.h
Amalgamate $OPTS templates/juce_cryptography_amalgam_template.h $DEST/juce_cryptography_amalgam.h
Amalgamate $OPTS templates/juce_data_structures_amalgam_template.h $DEST/juce_data_structures_amalgam.h
Amalgamate $OPTS templates/juce_events_amalgam_template.h $DEST/juce_events_amalgam.h
Amalgamate $OPTS templates/juce_graphics_amalgam_template.h $DEST/juce_graphics_amalgam.h
Amalgamate $OPTS templates/juce_gui_basics_amalgam_template.h $DEST/juce_gui_basics_amalgam.h
Amalgamate $OPTS templates/juce_gui_extra_amalgam_template.h $DEST/juce_gui_extra_amalgam.h
Amalgamate $OPTS templates/juce_opengl_amalgam_template.h $DEST/juce_opengl_amalgam.h
Amalgamate $OPTS templates/juce_video_amalgam_template.h $DEST/juce_video_amalgam.h

Amalgamate $OPTS templates/juce_audio_basics_amalgam_template.cpp $DEST/juce_audio_basics_amalgam.cpp
Amalgamate $OPTS templates/juce_audio_devices_amalgam_template.cpp $DEST/juce_audio_devices_amalgam.cpp
Amalgamate $OPTS templates/juce_audio_formats_amalgam_template.cpp $DEST/juce_audio_formats_amalgam.cpp
Amalgamate $OPTS templates/juce_audio_processors_amalgam_template.cpp $DEST/juce_audio_processors_amalgam.cpp
Amalgamate $OPTS templates/juce_audio_utils_amalgam_template.cpp $DEST/juce_audio_utils_amalgam.cpp
Amalgamate $OPTS templates/juce_core_amalgam_template.cpp $DEST/juce_core_amalgam.cpp
Amalgamate $OPTS templates/juce_cryptography_amalgam_template.cpp $DEST/juce_cryptography_amalgam.cpp
Amalgamate $OPTS templates/juce_data_structures_amalgam_template.cpp $DEST/juce_data_structures_amalgam.cpp
Amalgamate $OPTS templates/juce_events_amalgam_template.cpp $DEST/juce_events_amalgam.cpp
Amalgamate $OPTS templates/juce_graphics_amalgam_template.cpp $DEST/juce_graphics_amalgam.cpp
Amalgamate $OPTS templates/juce_gui_basics_amalgam_template.cpp $DEST/juce_gui_basics_amalgam.cpp
Amalgamate $OPTS templates/juce_gui_extra_amalgam_template.cpp $DEST/juce_gui_extra_amalgam.cpp
Amalgamate $OPTS templates/juce_opengl_amalgam_template.cpp $DEST/juce_opengl_amalgam.cpp
Amalgamate $OPTS templates/juce_video_amalgam_template.cpp $DEST/juce_video_amalgam.cpp

cd JUCE
git log --date=short --format=format:'%H %ad %s' > ../JUCEAmalgam/COMMITLOG
