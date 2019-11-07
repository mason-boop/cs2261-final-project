
//{{BLOCK(clouds)

//======================================================================
//
//	clouds, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 72 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 2304 + 4096 = 6912
//
//	Time-stamp: 2018-11-27, 15:47:35
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CLOUDS_H
#define GRIT_CLOUDS_H

#define cloudsTilesLen 2304
extern const unsigned short cloudsTiles[1152];

#define cloudsMapLen 4096
extern const unsigned short cloudsMap[2048];

#define cloudsPalLen 512
extern const unsigned short cloudsPal[256];

#endif // GRIT_CLOUDS_H

//}}BLOCK(clouds)
