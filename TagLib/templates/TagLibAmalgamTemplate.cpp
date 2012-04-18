/*
  ==============================================================================

  Copyright (c) 2002 Scott Wheeler, Lukas Lalinsky, Ismael Orenstein,
  Allan Sandfeld Jensen, Teemu Tervo, Mathias Panzenbock

  Official Project Location: http://developer.kde.org/~wheeler/taglib.html
  Amalgamated Project Location: https://github.com/vinniefalco/TagLibAmalgam

  ------------------------------------------------------------------------------

  TagLib is distributed under the GNU Lesser General Public License (LGPL) and
  Mozilla Public License (MPL). Essentially that means that it may be used in
  proprietary applications, but if changes are made to TagLib they must be
  contributed back to the project. Please review the licenses if you are
  considering using TagLib in your project. See COPYING.MPL and COPYING.GPL for
  more information on the licenses.

  ==============================================================================
*/

#define TAGLIB_NO_CONFIG
#define MAKE_TAGLIB_LIB
#define TAGLIB_STATIC
#define WITH_ASF
#define WITH_MP4

// disable warnings about unsafe standard library calls
#ifdef _MSC_VER
#pragma push_macro ("_CRT_SECURE_NO_WARNINGS")
#ifndef _CRT_SECURE_NO_WARNINGS
#define _CRT_SECURE_NO_WARNINGS
#endif
#pragma warning (push)
#pragma warning (disable: 4996) // deprecated POSIX names
#endif

// These wrap taglib .cpp files with a namespace to prevent a flood of
// compilation errors caused by promiscuous usage of "using" directives.
#define TAGLIB_BEGIN_SOURCE namespace TagLib {
#define TAGLIB_END_SOURCE }

//#include "TagLibConfig.h"

#include "toolkit/tpropertymap.cpp"
#include "toolkit/tstring.cpp"
#include "toolkit/tfile.cpp"

#include "tag.cpp"
#include "tagunion.cpp"
#include "fileref.cpp"
#include "audioproperties.cpp"

//#include "mp4/mp4atom.cpp"

#include "mpeg/mpegfile.cpp"
#include "mpeg/mpegproperties.cpp"
#include "mpeg/mpegheader.cpp"
#include "mpeg/xingheader.cpp"

#include "mpeg/id3v1/id3v1tag.cpp"
#include "mpeg/id3v1/id3v1genres.cpp"

#include "mpeg/id3v2/id3v2framefactory.cpp"
#include "mpeg/id3v2/id3v2synchdata.cpp"
#include "mpeg/id3v2/id3v2tag.cpp"
#include "mpeg/id3v2/id3v2header.cpp"
#include "mpeg/id3v2/id3v2frame.cpp"
#include "mpeg/id3v2/id3v2footer.cpp"
#include "mpeg/id3v2/id3v2extendedheader.cpp"

#include "mpeg/id3v2/frames/attachedpictureframe.cpp"
#include "mpeg/id3v2/frames/commentsframe.cpp"
#include "mpeg/id3v2/frames/generalencapsulatedobjectframe.cpp"
#include "mpeg/id3v2/frames/popularimeterframe.cpp"
#include "mpeg/id3v2/frames/privateframe.cpp"
#include "mpeg/id3v2/frames/relativevolumeframe.cpp"
#include "mpeg/id3v2/frames/textidentificationframe.cpp"
#include "mpeg/id3v2/frames/uniquefileidentifierframe.cpp"
#include "mpeg/id3v2/frames/unknownframe.cpp"
#include "mpeg/id3v2/frames/unsynchronizedlyricsframe.cpp"
#include "mpeg/id3v2/frames/urllinkframe.cpp"

#include "ogg/oggfile.cpp"
#include "ogg/oggpage.cpp"
#include "ogg/oggpageheader.cpp"
#include "ogg/xiphcomment.cpp"

#include "ogg/vorbis/vorbisfile.cpp"
#include "ogg/vorbis/vorbisproperties.cpp"

#include "flac/flacfile.cpp"
#include "flac/flacpicture.cpp"
#include "flac/flacproperties.cpp"
#include "flac/flacmetadatablock.cpp"
#include "flac/flacunknownmetadatablock.cpp"

#include "ogg/flac/oggflacfile.cpp"

#include "mpc/mpcfile.cpp"
#include "mpc/mpcproperties.cpp"

#include "mp4/mp4file.cpp"
#include "mp4/mp4atom.cpp" // Doesn't compile unless it comes early
#include "mp4/mp4tag.cpp"
#include "mp4/mp4item.cpp"
#include "mp4/mp4properties.cpp"
#include "mp4/mp4coverart.cpp"

#include "ape/apetag.cpp"
#include "ape/apefooter.cpp"
#include "ape/apeitem.cpp"
#include "ape/apefile.cpp"
#include "ape/apeproperties.cpp"

#include "wavpack/wavpackfile.cpp"
#include "wavpack/wavpackproperties.cpp"

#include "ogg/speex/speexfile.cpp"
#include "ogg/speex/speexproperties.cpp"

#include "trueaudio/trueaudiofile.cpp"
#include "trueaudio/trueaudioproperties.cpp"

#include "asf/asftag.cpp"
#include "asf/asffile.cpp"
#include "asf/asfproperties.cpp"
#include "asf/asfattribute.cpp"
#include "asf/asfpicture.cpp"

#include "riff/rifffile.cpp"

#include "riff/aiff/aifffile.cpp"
#include "riff/aiff/aiffproperties.cpp"

#include "riff/wav/wavfile.cpp"
#include "riff/wav/wavproperties.cpp"

#include "mod/modfilebase.cpp"
#include "mod/modfile.cpp"
#include "mod/modtag.cpp"
#include "mod/modproperties.cpp"

#include "s3m/s3mfile.cpp"
#include "s3m/s3mproperties.cpp"

#include "it/itfile.cpp"
#include "it/itproperties.cpp"

#include "xm/xmfile.cpp"
#include "xm/xmproperties.cpp"

#include "toolkit/tstringlist.cpp"
#include "toolkit/tbytevector.cpp"
#include "toolkit/tbytevectorlist.cpp"
#include "toolkit/tbytevectorstream.cpp"
#include "toolkit/tiostream.cpp"
#include "toolkit/tfilestream.cpp"
#include "toolkit/tdebug.cpp"
#include "toolkit/unicode.cpp"

#ifdef _MSC_VER
#pragma warning (pop)
#pragma pop_macro ("_CRT_SECURE_NO_WARNINGS")
#endif

