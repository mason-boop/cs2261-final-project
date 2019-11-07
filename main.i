# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"

# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "myLib.h"
void hideSprites();
# 182 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 193 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 233 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 324 "myLib.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;




int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);

void hideSprites();
# 3 "main.c" 2
# 1 "game.h" 1





typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
 int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int active;
 int bulletTimer;
} ANISPRITE;







extern ANISPRITE player;

extern ANISPRITE cloud[3];
extern ANISPRITE spike[2];

extern ANISPRITE iceking;
extern ANISPRITE ikBullets[2];

extern ANISPRITE powerup;

extern int lives;
extern int direction;
extern int up;
extern int upTimer;
extern int cheat;
extern int score;

extern int cloudCounter;
extern int spikeCounter;
extern int icekingCounter;
extern int powerupCounter;

extern int spawnCloudTime;
extern int spawnSpikeTime;
extern int spawnIcekingTime;
extern int spawnPowerupTime;

extern int hOff;
extern int vOff;


enum {PLAYER1, PLAYER2};
enum {IK1, IK2, IK3};


void initGame();
void updateGame();
void drawGame();

void drawScore();

void initPlayer();
void updatePlayer();
void drawPlayer();

void initCloud();
void spawnCloud();
void updateCloud(ANISPRITE *);
void drawCloud();

void initSpike();
void spawnSpike();
void updateSpike(ANISPRITE *);
void drawSpike();

void initIK();
void spawnIK();
void updateIK();
void drawIK();

void initIKBullets();
void fireIKBullet();
void updateIKBullet(ANISPRITE *);
void drawIKBullet(ANISPRITE *);

void initUp();
void spawnUp();
void updateUp();
void drawUp();
# 4 "main.c" 2
# 1 "sound.h" 1
SOUND soundA;
SOUND soundB;

void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 5 "main.c" 2


# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 8 "main.c" 2


# 1 "start1.h" 1
# 22 "start1.h"
extern const unsigned short start1Tiles[5568];


extern const unsigned short start1Map[1024];


extern const unsigned short start1Pal[256];
# 11 "main.c" 2
# 1 "start2.h" 1
# 22 "start2.h"
extern const unsigned short start2Tiles[5472];


extern const unsigned short start2Map[1024];


extern const unsigned short start2Pal[256];
# 12 "main.c" 2
# 1 "start3.h" 1
# 22 "start3.h"
extern const unsigned short start3Tiles[5264];


extern const unsigned short start3Map[1024];


extern const unsigned short start3Pal[256];
# 13 "main.c" 2
# 1 "instructions.h" 1
# 22 "instructions.h"
extern const unsigned short instructionsTiles[3936];


extern const unsigned short instructionsMap[1024];


extern const unsigned short instructionsPal[256];
# 14 "main.c" 2
# 1 "furtherclouds.h" 1
# 22 "furtherclouds.h"
extern const unsigned short furthercloudsTiles[2624];


extern const unsigned short furthercloudsMap[1024];


extern const unsigned short furthercloudsPal[256];
# 15 "main.c" 2
# 1 "clouds.h" 1
# 22 "clouds.h"
extern const unsigned short cloudsTiles[1152];


extern const unsigned short cloudsMap[2048];


extern const unsigned short cloudsPal[256];
# 16 "main.c" 2
# 1 "pause1.h" 1
# 22 "pause1.h"
extern const unsigned short pause1Tiles[3888];


extern const unsigned short pause1Map[1024];


extern const unsigned short pause1Pal[256];
# 17 "main.c" 2
# 1 "pause2.h" 1
# 22 "pause2.h"
extern const unsigned short pause2Tiles[3696];


extern const unsigned short pause2Map[1024];


extern const unsigned short pause2Pal[256];
# 18 "main.c" 2
# 1 "pause3.h" 1
# 22 "pause3.h"
extern const unsigned short pause3Tiles[3856];


extern const unsigned short pause3Map[1024];


extern const unsigned short pause3Pal[256];
# 19 "main.c" 2
# 1 "lose.h" 1
# 22 "lose.h"
extern const unsigned short loseTiles[1584];


extern const unsigned short loseMap[1024];


extern const unsigned short losePal[256];
# 20 "main.c" 2
# 1 "lose_alt.h" 1
# 22 "lose_alt.h"
extern const unsigned short lose_altTiles[1280];


extern const unsigned short lose_altMap[1024];


extern const unsigned short lose_altPal[256];
# 21 "main.c" 2


# 1 "CoralReef.h" 1
# 20 "CoralReef.h"
extern const unsigned char CoralReef[2507328];
# 24 "main.c" 2
# 1 "CoralReefFast.h" 1
# 20 "CoralReefFast.h"
extern const unsigned char CoralReefFast[1616267];
# 25 "main.c" 2
# 1 "LastParadise.h" 1
# 20 "LastParadise.h"
extern const unsigned char LastParadise[2704032];
# 26 "main.c" 2
# 1 "OhSFX.h" 1
# 20 "OhSFX.h"
extern const unsigned char OhSFX[16237];
# 27 "main.c" 2


void initialize();
void game();


void goToStart1();
void start1();
void goToStart2();
void start2();
void goToInstructions();
void instructions();
void goToGame();
void game();
void goToPause();
void pause();
void goToLose();
void lose();


enum {START1, START2, INSTRUCTIONS, GAME, PAUSE, LOSE};
int state;


int startCount;
int currentStartFrame;


int intCount;
int currentIntFrame;


int pauseCount;
int currentPauseFrame;


int finalScore;


unsigned short buttons;
unsigned short oldButtons;

int main() {


    setupSounds();
    setupInterrupts();

    initialize();


    playSoundA(CoralReef, 2507328, 11025, 1);

    while(1) {

        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch(state) {

            case START1:
                start1();
                break;
            case START2:
                start2();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case LOSE:
                lose();
                break;
        }
    }
}


void initialize() {

    buttons = (*(volatile unsigned short *)0x04000130);
    goToStart1();
}


void goToStart1() {

    startCount = 0;


    (*(unsigned short *)0x4000000) = (1<<10);


    DMANow(3, &start1Pal, ((unsigned short *)0x5000000), 512 / 2);


    (*(volatile unsigned short*)0x400000C) = (0<<7) | (0<<14) | ((0)<<2) | ((31)<<8);
    DMANow(3, &start1Tiles, &((charblock *)0x6000000)[0], 11136 / 2);
    DMANow(3, &start1Map, &((screenblock *)0x6000000)[31], 2048 / 2);

    waitForVBlank();

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    state = START1;
}


void start1() {

    waitForVBlank();


    if (startCount == 75) {

        if (currentStartFrame == 0) {

            DMANow(3, &start1Tiles, &((charblock *)0x6000000)[0], 11136 / 2);
            DMANow(3, &start1Map, &((screenblock *)0x6000000)[31], 2048 / 2);

            currentStartFrame = 1;
        } else {

            DMANow(3, &start2Tiles, &((charblock *)0x6000000)[0], 10944 / 2);
            DMANow(3, &start2Map, &((screenblock *)0x6000000)[31], 2048 / 2);

            currentStartFrame = 0;
        }

        startCount = 0;
    }

    startCount++;


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {

        goToGame();
        initGame();
    } else if ((!(~(oldButtons)&((1<<7))) && (~buttons & ((1<<7))))) {

        goToStart2();
    }
}


void goToStart2() {


    (*(unsigned short *)0x4000000) = (1<<10);


    DMANow(3, &start1Pal, ((unsigned short *)0x5000000), 512 / 2);


    (*(volatile unsigned short*)0x400000C) = (0<<7) | (0<<14) | ((0)<<2) | ((31)<<8);
    DMANow(3, &start1Tiles, &((charblock *)0x6000000)[0], 11136 / 2);
    DMANow(3, &start1Map, &((screenblock *)0x6000000)[31], 2048 / 2);

    waitForVBlank();

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    state = START2;
}


void start2() {

    waitForVBlank();


    if (startCount == 75) {

        if (currentStartFrame == 0) {

            DMANow(3, &start1Tiles, &((charblock *)0x6000000)[0], 11136 / 2);
            DMANow(3, &start1Map, &((screenblock *)0x6000000)[31], 2048 / 2);

            currentStartFrame = 1;
        } else {

            DMANow(3, &start3Tiles, &((charblock *)0x6000000)[0], 10528 / 2);
            DMANow(3, &start3Map, &((screenblock *)0x6000000)[31], 2048 / 2);

            currentStartFrame = 0;
        }

        startCount = 0;
    }

    startCount++;


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {

        goToInstructions();
    } else if ((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6))))) {

        goToStart1();
    }
}


void goToInstructions() {

    intCount = 0;


    (*(unsigned short *)0x4000000) = (1<<10);


    DMANow(3, &instructionsPal, ((unsigned short *)0x5000000), 512 / 2);


    (*(volatile unsigned short*)0x400000C) = (0<<7) | (0<<14) | ((0)<<2) | ((31)<<8);
    DMANow(3, &instructionsTiles, &((charblock *)0x6000000)[0], 7872 / 2);
    DMANow(3, &instructionsMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    waitForVBlank();

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    state = INSTRUCTIONS;
}


void instructions() {

    waitForVBlank();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {

        goToGame();
        initGame();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {

        goToStart1();
    }
}


void goToGame() {


    (*(unsigned short *)0x4000000) = (1<<8) | (1<<9) | (1<<12);


    DMANow(3, &furthercloudsPal, ((unsigned short *)0x5000000), 512 / 2);


    (*(volatile unsigned short*)0x400000A) = (0<<7) | (0<<14) | ((0)<<2) | ((31)<<8);
    DMANow(3, &furthercloudsTiles, &((charblock *)0x6000000)[0], 5248 / 2);
    DMANow(3, &furthercloudsMap, &((screenblock *)0x6000000)[31], 2048 / 2);


    (*(volatile unsigned short*)0x4000008) = (0<<7) | (1<<14) | ((1)<<2) | ((29)<<8);
    DMANow(3, &cloudsTiles, &((charblock *)0x6000000)[1], 2304 / 2);
    DMANow(3, &cloudsMap, &((screenblock *)0x6000000)[29], 4096 / 2);


    DMANow(3, &spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, &spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);

    state = GAME;
}


void game() {

    updateGame();


    (*(volatile unsigned short *)0x04000014) = hOff;

    drawGame();
    waitForVBlank();


    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToPause();

        stopSound();
        playSoundA(LastParadise, 2704032, 11025, 1);
    } else if (lives == 0) {
        finalScore = score;
        goToLose();
    }
}


void goToPause() {


    (*(unsigned short *)0x4000000) = (1<<10);


    DMANow(3, &pause1Pal, ((unsigned short *)0x5000000), 512 / 2);


    (*(volatile unsigned short*)0x400000C) = (0<<7) | (0<<14) | ((0)<<2) | ((31)<<8);
    DMANow(3, &pause1Tiles, &((charblock *)0x6000000)[0], 7776 / 2);
    DMANow(3, &pause1Map, &((screenblock *)0x6000000)[31], 2048 / 2);

    waitForVBlank();

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    state = PAUSE;
}


void pause() {

    waitForVBlank();


    if (pauseCount % 63 < 21) {

        DMANow(3, &pause1Tiles, &((charblock *)0x6000000)[0], 7776 / 2);
        DMANow(3, &pause1Map, &((screenblock *)0x6000000)[31], 2048 / 2);
    } else if (pauseCount % 63 < 42) {

        DMANow(3, &pause2Tiles, &((charblock *)0x6000000)[0], 7392 / 2);
        DMANow(3, &pause2Map, &((screenblock *)0x6000000)[31], 2048 / 2);
    } else {

        DMANow(3, &pause3Tiles, &((charblock *)0x6000000)[0], 7712 / 2);
        DMANow(3, &pause3Map, &((screenblock *)0x6000000)[31], 2048 / 2);
    }

    pauseCount++;


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToGame();

        stopSound();
        playSoundA(CoralReef, 2507328, 11025, 1);
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToStart1();

        stopSound();
        playSoundA(CoralReef, 2507328, 11025, 1);
    }
}


void goToLose() {


    (*(unsigned short *)0x4000000) = (1<<10);


    DMANow(3, &lose_altPal, ((unsigned short *)0x5000000), 512 / 2);


    (*(volatile unsigned short*)0x400000C) = (0<<7) | (0<<14) | ((0)<<2) | ((31)<<8);
    DMANow(3, &lose_altTiles, &((charblock *)0x6000000)[0], 2560 / 2);
    DMANow(3, &lose_altMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    waitForVBlank();


    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    playSoundB(OhSFX, 16237, 11025, 0);

    state = LOSE;
}


void lose() {


    waitForVBlank();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart1();
    }
}
