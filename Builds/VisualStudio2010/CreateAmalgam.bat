@ECHO OFF
SET SRCDIR=..\..\JUCE
SET DESTDIR=..\..\JUCEAmalgam\include
SET OPTIONS=-i %SRCDIR% -w "*.c;*.cpp;*.h;*.hpp;*.m;*.mm" 

Amalgamate %OPTIONS% ..\..\templates\juce_audio_basics_amalgam_template.h %DESTDIR%\juce_audio_basics_amalgam.h
Amalgamate %OPTIONS% ..\..\templates\juce_audio_devices_amalgam_template.h %DESTDIR%\juce_audio_devices_amalgam.h
Amalgamate %OPTIONS% ..\..\templates\juce_audio_formats_amalgam_template.h %DESTDIR%\juce_audio_formats_amalgam.h
Amalgamate %OPTIONS% ..\..\templates\juce_audio_processors_amalgam_template.h %DESTDIR%\juce_audio_processors_amalgam.h
Amalgamate %OPTIONS% ..\..\templates\juce_audio_utils_amalgam_template.h %DESTDIR%\juce_audio_utils_amalgam.h
Amalgamate %OPTIONS% ..\..\templates\juce_core_amalgam_template.h %DESTDIR%\juce_core_amalgam.h
Amalgamate %OPTIONS% ..\..\templates\juce_cryptography_amalgam_template.h %DESTDIR%\juce_cryptography_amalgam.h
Amalgamate %OPTIONS% ..\..\templates\juce_data_structures_amalgam_template.h %DESTDIR%\juce_data_structures_amalgam.h
Amalgamate %OPTIONS% ..\..\templates\juce_events_amalgam_template.h %DESTDIR%\juce_events_amalgam.h
Amalgamate %OPTIONS% ..\..\templates\juce_graphics_amalgam_template.h %DESTDIR%\juce_graphics_amalgam.h
Amalgamate %OPTIONS% ..\..\templates\juce_gui_basics_amalgam_template.h %DESTDIR%\juce_gui_basics_amalgam.h
Amalgamate %OPTIONS% ..\..\templates\juce_gui_extra_amalgam_template.h %DESTDIR%\juce_gui_extra_amalgam.h
Amalgamate %OPTIONS% ..\..\templates\juce_opengl_amalgam_template.h %DESTDIR%\juce_opengl_amalgam.h
Amalgamate %OPTIONS% ..\..\templates\juce_video_amalgam_template.h %DESTDIR%\juce_video_amalgam.h

Amalgamate %OPTIONS% ..\..\templates\juce_audio_basics_amalgam_template.cpp %DESTDIR%\juce_audio_basics_amalgam.cpp
Amalgamate %OPTIONS% ..\..\templates\juce_audio_devices_amalgam_template.cpp %DESTDIR%\juce_audio_devices_amalgam.cpp
Amalgamate %OPTIONS% ..\..\templates\juce_audio_formats_amalgam_template.cpp %DESTDIR%\juce_audio_formats_amalgam.cpp
Amalgamate %OPTIONS% ..\..\templates\juce_audio_processors_amalgam_template.cpp %DESTDIR%\juce_audio_processors_amalgam.cpp
Amalgamate %OPTIONS% ..\..\templates\juce_audio_utils_amalgam_template.cpp %DESTDIR%\juce_audio_utils_amalgam.cpp
Amalgamate %OPTIONS% ..\..\templates\juce_core_amalgam_template.cpp %DESTDIR%\juce_core_amalgam.cpp
Amalgamate %OPTIONS% ..\..\templates\juce_cryptography_amalgam_template.cpp %DESTDIR%\juce_cryptography_amalgam.cpp
Amalgamate %OPTIONS% ..\..\templates\juce_data_structures_amalgam_template.cpp %DESTDIR%\juce_data_structures_amalgam.cpp
Amalgamate %OPTIONS% ..\..\templates\juce_events_amalgam_template.cpp %DESTDIR%\juce_events_amalgam.cpp
Amalgamate %OPTIONS% ..\..\templates\juce_graphics_amalgam_template.cpp %DESTDIR%\juce_graphics_amalgam.cpp
Amalgamate %OPTIONS% ..\..\templates\juce_gui_basics_amalgam_template.cpp %DESTDIR%\juce_gui_basics_amalgam.cpp
Amalgamate %OPTIONS% ..\..\templates\juce_gui_extra_amalgam_template.cpp %DESTDIR%\juce_gui_extra_amalgam.cpp
Amalgamate %OPTIONS% ..\..\templates\juce_opengl_amalgam_template.cpp %DESTDIR%\juce_opengl_amalgam.cpp
Amalgamate %OPTIONS% ..\..\templates\juce_video_amalgam_template.cpp %DESTDIR%\juce_video_amalgam.cpp

Exit /B 0
