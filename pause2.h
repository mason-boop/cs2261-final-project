
//{{BLOCK(pause2)

//======================================================================
//
//	pause2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 231 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 7392 + 2048 = 9952
//
//	Time-stamp: 2018-11-27, 23:46:27
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSE2_H
#define GRIT_PAUSE2_H

#define pause2TilesLen 7392
extern const unsigned short pause2Tiles[3696];

#define pause2MapLen 2048
extern const unsigned short pause2Map[1024];

#define pause2PalLen 512
extern const unsigned short pause2Pal[256];

#endif // GRIT_PAUSE2_H

//}}BLOCK(pause2)
