/***************************************************************************/
/*                                                                         */
/*  FreeTypeAmalgam.c                                                      */
/*                                                                         */
/*  Copyright 2003-2007, 2011 by                                           */
/*  David Turner, Robert Wilhelm, and Werner Lemberg.                      */
/*                                                                         */
/*  This file is part of the FreeType project, and may only be used,       */
/*  modified, and distributed under the terms of the FreeType project      */
/*  license, LICENSE.TXT.  By continuing to use, modify, or distribute     */
/*  this file you indicate that you have read the license and              */
/*  understand and accept it fully.                                        */
/*                                                                         */
/***************************************************************************/

#define FT2_BUILD_LIBRARY

#ifdef _MSC_VER
#pragma push_macro("_CRT_SECURE_NO_WARNINGS")
#ifndef _CRT_SECURE_NO_WARNINGS
#define _CRT_SECURE_NO_WARNINGS
#endif
#endif

/*#define FT_CONFIG_OPTION_PIC*/

/*
 * These files appear inside conditional compilation directives
 *
 */

#include "src/autofit/aftypes.h"
#include "src/autofit/afdummy.h"
#include "src/autofit/aflatin.h"
#include "src/autofit/afcjk.h"
#include "src/autofit/afindic.h"
#include "src/cff/cfftypes.h"
#include "src/cff/cffparse.h"
#include "src/sfnt/ttcmap.h"
#include "src/sfnt/ttbdf.h"

#include FT_INTERNAL_RFORK_H

#include FT_TRUETYPE_TABLES_H

#include FT_SERVICE_GLYPH_DICT_H
#include FT_SERVICE_POSTSCRIPT_INFO_H
#include FT_SERVICE_POSTSCRIPT_NAME_H
#include FT_SERVICE_TT_CMAP_H
#include FT_SERVICE_CID_H
#include FT_SERVICE_TRUETYPE_GLYF_H

/*
 * Sources
 *
 */

#include "src/autofit/autofit.c"
#include "src/bdf/bdf.c"

#include "src/cff/cff.c"

#include "src/base/ftbase.c"
#include "src/base/ftbitmap.c"
#include "src/cache/ftcache.c"
#include "src/base/ftdebug.c"
#include "src/base/ftfstype.c"
#include "src/base/ftgasp.c"
#include "src/base/ftglyph.c"
#include "src/base/ftinit.c"
#include "src/base/ftstroke.c"
#include "src/base/ftsystem.c"
#include "src/smooth/smooth.c"

/*
 * Modules
 *
 */

#include "src/base/ftbbox.c"
#include "src/base/ftmm.c"
#include "src/base/ftpfr.c"
#include "src/base/ftsynth.c"
#include "src/base/fttype1.c"
#include "src/base/ftwinfnt.c"
#include "src/pcf/pcf.c"
#include "src/pfr/pfr.c"
#include "src/psaux/psaux.c"
#include "src/pshinter/pshinter.c"
#include "src/psnames/psmodule.c"
#include "src/raster/raster.c"
#include "src/sfnt/sfnt.c"
#include "src/truetype/truetype.c"
#include "src/type1/type1.c"
#include "src/cid/type1cid.c"
#include "src/type42/type42.c"
#include "src/winfonts/winfnt.c"

/*
 * GZip
 *
 */

#ifdef FT_CONFIG_OPTION_SYSTEM_ZLIB
#undef FT_CONFIG_OPTION_SYSTEM_ZLIB
#endif
#undef NO_DUMMY_DECL
#define NO_DUMMY_DECL
#undef USE_ZLIB_ZCALLOC
#undef MY_ZCALLOC
#define MY_ZCALLOC /* prevent all zcalloc() & zfree() in zutils.c */
#include "src/gzip/zlib.h"
#undef NO_DUMMY_DECL
#undef MY_ZCALLOC

#include "src/gzip/ftgzip.c"

/*
 * LZW
 *
 */

#include "src/lzw/ftlzw.c"

#ifdef _MSC_VER
#pragma pop_macro("_CRT_SECURE_NO_WARNINGS")
#endif

