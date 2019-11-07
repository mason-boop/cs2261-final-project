// Gameplay files
#include "myLib.h"
#include "game.h"
#include "sound.h"

// Spritesheet file
#include "spritesheet.h"

// Background files
#include "start1.h"
#include "start2.h"
#include "start3.h"
#include "instructions.h"
#include "furtherclouds.h"
#include "clouds.h"
#include "pause1.h"
#include "pause2.h"
#include "pause3.h"
#include "lose.h"
#include "lose_alt.h"

// // Sound files
#include "CoralReef.h" // SoundA
#include "CoralReefFast.h" // Only plays when powered up
#include "LastParadise.h" // Only plays in pause state
#include "OhSFX.h" // SoundB, only plays in lose state

// Prototypes
void initialize();
void game();

// State Prototypes
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

// States
enum {START1, START2, INSTRUCTIONS, GAME, PAUSE, LOSE};
int state;

// Start variables
int startCount;
int currentStartFrame;

// Instruction variables
int intCount;
int currentIntFrame;

// Pause variables
int pauseCount;
int currentPauseFrame;

// Score variable
int finalScore;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

int main() {

    // Set up sound fuctionality
    setupSounds();
    setupInterrupts();

    initialize();

    // Play game music across all states (excluding pause state)
    playSoundA(CoralReef, CORALREEFLEN, CORALREEFFREQ, 1);

    while(1) {

        oldButtons = buttons;
        buttons = BUTTONS;

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

// Initialize the game on first launch
void initialize() {

    buttons = BUTTONS;
    goToStart1();
}

// Sets up the start1 state (start blinking)
void goToStart1() {

    startCount = 0;

    // Set up display control register
    REG_DISPCTL = BG2_ENABLE;

    // Load in start screen palette
    DMANow(3, &start1Pal, PALETTE, start1PalLen / 2);

    // Set background control register 0 & load in start tiles & maps
    REG_BG2CNT = BG_4BPP | BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, &start1Tiles, &CHARBLOCK[0], start1TilesLen / 2);
    DMANow(3, &start1Map, &SCREENBLOCK[31], start1MapLen / 2);

    waitForVBlank();

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = START1;
}

// Runs every frame of the start1 state (start blinking)
void start1() {

    waitForVBlank();

    // Flash "PRESS START" in the start screen until start is pressed
    if (startCount == 75) {

        if (currentStartFrame == 0) {

            DMANow(3, &start1Tiles, &CHARBLOCK[0], start1TilesLen / 2);
            DMANow(3, &start1Map, &SCREENBLOCK[31], start1MapLen / 2);

            currentStartFrame = 1;
        } else {

            DMANow(3, &start2Tiles, &CHARBLOCK[0], start2TilesLen / 2);
            DMANow(3, &start2Map, &SCREENBLOCK[31], start2MapLen / 2);

            currentStartFrame = 0;
        }

        startCount = 0;
    }

    startCount++;

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {

        goToGame();
        initGame();
    } else if (BUTTON_PRESSED(BUTTON_DOWN)) {

        goToStart2();
    }
}

// Sets up the start2 state (instructions blinking)
void goToStart2() {

    // Set up display control register
    REG_DISPCTL = BG2_ENABLE;

    // Load in start screen palette
    DMANow(3, &start1Pal, PALETTE, start1PalLen / 2);

    // Set background control register 0 & load in start tiles & maps
    REG_BG2CNT = BG_4BPP | BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, &start1Tiles, &CHARBLOCK[0], start1TilesLen / 2);
    DMANow(3, &start1Map, &SCREENBLOCK[31], start1MapLen / 2);

    waitForVBlank();

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = START2;
}

// Runs every frame of the start2 state (instructions blinking)
void start2() {

    waitForVBlank();

    // Flash "INSTRUCTIONS" in the start screen until start is pressed
    if (startCount == 75) {

        if (currentStartFrame == 0) {

            DMANow(3, &start1Tiles, &CHARBLOCK[0], start1TilesLen / 2);
            DMANow(3, &start1Map, &SCREENBLOCK[31], start1MapLen / 2);

            currentStartFrame = 1;
        } else {

            DMANow(3, &start3Tiles, &CHARBLOCK[0], start3TilesLen / 2);
            DMANow(3, &start3Map, &SCREENBLOCK[31], start3MapLen / 2);

            currentStartFrame = 0;
        }

        startCount = 0;
    }

    startCount++;

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {

        goToInstructions();
    } else if (BUTTON_PRESSED(BUTTON_UP)) {

        goToStart1();
    }
}

// Sets up the instructions state
void goToInstructions() {

    intCount = 0;

    // Set up display control register
    REG_DISPCTL = BG2_ENABLE;

    // Load in instructions screen palette
    DMANow(3, &instructionsPal, PALETTE, instructionsPalLen / 2);

    // Set background control register 0 & load in instructions tiles & maps
    REG_BG2CNT = BG_4BPP | BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, &instructionsTiles, &CHARBLOCK[0], instructionsTilesLen / 2);
    DMANow(3, &instructionsMap, &SCREENBLOCK[31], instructionsMapLen / 2);

    waitForVBlank();

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = INSTRUCTIONS;
}

// Runs every frame of the instructions state
void instructions() {

    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {

        goToGame();
        initGame();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {

        goToStart1();
    }
}

// Sets up the game state
void goToGame() {

    // Set up display control register
    REG_DISPCTL = BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;

    // Load in background palette
    DMANow(3, &furthercloudsPal, PALETTE, furthercloudsPalLen / 2);

    // Set background control register 1 (furtherclouds) & load in background tiles & maps
    REG_BG1CNT = BG_4BPP | BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, &furthercloudsTiles, &CHARBLOCK[0], furthercloudsTilesLen / 2);
    DMANow(3, &furthercloudsMap, &SCREENBLOCK[31], furthercloudsMapLen / 2);

    // Set background control register 0 (clouds) & load in background tiles & maps
    REG_BG0CNT = BG_4BPP | BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    DMANow(3, &cloudsTiles, &CHARBLOCK[1], cloudsTilesLen / 2);
    DMANow(3, &cloudsMap, &SCREENBLOCK[29], cloudsMapLen / 2);

    // Load the spritesheet Tiles and Pal
    DMANow(3, &spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, &spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);

    state = GAME;
}

// Update game each frame
void game() {

    updateGame();

    // Scroll infinitely to the right
    REG_BG1HOFF = hOff;

    drawGame();
    waitForVBlank();

    // DMA contents of shadowOAM to OAM
    DMANow(3, shadowOAM, OAM, 128 * 4);

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();

        stopSound();
        playSoundA(LastParadise, LASTPARADISELEN, LASTPARADISEFREQ, 1);
    } else if (lives == 0) {
        finalScore = score;
        goToLose();
    }
}

// Sets up the pause state
void goToPause() {

    // Set up display control register
    REG_DISPCTL = BG2_ENABLE;

    // Load in pause screen palette
    DMANow(3, &pause1Pal, PALETTE, pause1PalLen / 2);

    // Set background control register 0 & load in pause tiles & maps
    REG_BG2CNT = BG_4BPP | BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, &pause1Tiles, &CHARBLOCK[0], pause1TilesLen / 2);
    DMANow(3, &pause1Map, &SCREENBLOCK[31], pause1MapLen / 2);

    waitForVBlank();

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {

    waitForVBlank();

    // Animate the pause screen until exited
    if (pauseCount % 63 < 21) {

        DMANow(3, &pause1Tiles, &CHARBLOCK[0], pause1TilesLen / 2);
        DMANow(3, &pause1Map, &SCREENBLOCK[31], pause1MapLen / 2);
    } else if (pauseCount % 63 < 42) {

        DMANow(3, &pause2Tiles, &CHARBLOCK[0], pause2TilesLen / 2);
        DMANow(3, &pause2Map, &SCREENBLOCK[31], pause2MapLen / 2);
    } else {

        DMANow(3, &pause3Tiles, &CHARBLOCK[0], pause3TilesLen / 2);
        DMANow(3, &pause3Map, &SCREENBLOCK[31], pause3MapLen / 2);
    }

    pauseCount++;

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();

        stopSound();
        playSoundA(CoralReef, CORALREEFLEN, CORALREEFFREQ, 1);
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart1();

        stopSound();
        playSoundA(CoralReef, CORALREEFLEN, CORALREEFFREQ, 1);
    }
}

// Sets up the lose state
void goToLose() {

    // Set up display control register
    REG_DISPCTL = BG2_ENABLE;

    // Load in lose screen palette
    DMANow(3, &lose_altPal, PALETTE, lose_altPalLen / 2);

    // Set background control register 0 & load in lose tiles & maps
    REG_BG2CNT = BG_4BPP | BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, &lose_altTiles, &CHARBLOCK[0], lose_altTilesLen / 2);
    DMANow(3, &lose_altMap, &SCREENBLOCK[31], lose_altMapLen / 2);

    waitForVBlank();

    // hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    playSoundB(OhSFX, OHSFXLEN, OHSFXFREQ, 0);

    state = LOSE;
}

// Runs every frame of the lose state
void lose() {

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions, go to game if start is pressed
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart1();
    }
}