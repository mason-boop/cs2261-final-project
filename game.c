#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "spritesheet.h"

// Variables
ANISPRITE player;

ANISPRITE cloud[CLOUDCOUNT];
ANISPRITE spike[SPIKECOUNT];

ANISPRITE iceking;
ANISPRITE ikBullets[BULLETCOUNT];

ANISPRITE powerup;

int lives;
int direction;
int up;
int upTimer;
int cheat;
int score;

int cloudCounter, spikeCounter, icekingCounter, powerupCounter;
int spawnCloudTime, spawnSpikeTime, spawnIcekingTime, spawnPowerupTime;

int hOff;
int vOff;

OBJ_ATTR shadowOAM[128];

/*  === Animation Variables ===
    *   aniCounter: Used to count how many frames have passed
    *   curFrame: which frame of animation enemy is in (row in spritesheet)
    *   numFrames: the total number of frames
    *   aniState: which state of animation enemy is in (column in spritesheet)
*/

// Initialize the game
void initGame() {

    // Hide all sprites initially to prevent Cornerface
    hideSprites();

    // Initialize the fellas
    initPlayer();
    initCloud();
    initSpike();
    initIK();
    initIKBullets();
    initUp();

    // Intitialize offsets
    hOff = 0;
    vOff = 0;

    // Initialize variables
    lives = 1;
    direction = 2;
    up = 0;
    upTimer = 0;
    cheat = 0;
    score = 0;

    // Initialize enemy counters
    cloudCounter = 0;
    spikeCounter = 0;
    icekingCounter = 0;
    powerupCounter = 0;

    // Initialize enemy spawn times
    spawnCloudTime = (rand() % 10) + 30;
    spawnSpikeTime = (rand() % 25) + 175;
    spawnIcekingTime = (rand() % 80) + 300;
    spawnPowerupTime = (rand() % 300) + 800;
}

// Updates the game each frame
void updateGame() {

    // Increment hOff every frame, faster if powered up
    if ((up == 1 && upTimer <= 300) || cheat == 1) {

        hOff += 6;
    } else {

        hOff += 2;
        up = 0;
        upTimer = 0;
        cheat = 0;
    }

    // Update player
    updatePlayer();

    // Update all clouds
    for (int i = 0; i < CLOUDCOUNT; i++) {
        updateCloud(&cloud[i]);
    }

    // Update all spikes
    for (int i = 0; i < SPIKECOUNT; i++) {
        updateSpike(&spike[i]);
    }

    // Update Ice King
    updateIK();

    // Update all IK bullets
    for (int i = 0; i < BULLETCOUNT; i++) {
        updateIKBullet(&ikBullets[i]);
    }

    // Update power up
    updateUp();

    // Increment enemy counters
    cloudCounter++;
    spikeCounter++;
    icekingCounter++;
    powerupCounter++;
    upTimer++;

    // Increment score
    score++;
}

// Draws the game each frame
void drawGame() {

    // Draw score
    drawScore();

    // Draw player
    drawPlayer();

    // Draw Ice King bullets
    for (int i = 0; i < BULLETCOUNT; i++) {
        drawIKBullet(&ikBullets[i]);
    }

    // Draw the fellas
    drawCloud();
    drawSpike();
    drawIK();
    drawUp();

    // Load offsets in background register
    REG_BG0HOFF = hOff + (hOff / 2);
    REG_BG1HOFF = hOff - (hOff / 2);
}

// Draw game score
void drawScore() {

    // Split score into digits
    int thousands = score / 1000;
    int hundreds = (score - (thousands * 1000)) / 100;
    int tens = (score - (thousands * 1000) - (hundreds * 100)) / 10;
    int ones = (score - (thousands * 1000) - (hundreds * 100) - (tens * 10));

    // Draw score
    for (int i = 0; i < 4; i++) {

        shadowOAM[i + 10].attr0 = (ROWMASK & 6) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[i + 10].attr1 = (COLMASK & ((95 + (i * 12)))) | ATTR1_SMALL;
    }

    shadowOAM[10].attr2 = ATTR2_TILEID(thousands * 2, 25) | ATTR2_PALROW(0);
    shadowOAM[11].attr2 = ATTR2_TILEID(hundreds * 2, 25) | ATTR2_PALROW(0);
    shadowOAM[12].attr2 = ATTR2_TILEID(tens * 2, 25) | ATTR2_PALROW(0);
    shadowOAM[13].attr2 = ATTR2_TILEID(ones * 2, 25) | ATTR2_PALROW(0);
}

// Initialize the player
void initPlayer() {

    player.worldRow = (SCREENHEIGHT / 2) - (player.width / 2);
    player.worldCol = 10;
    player.screenRow = 0;
    player.screenCol = 0;
    player.height = 25;
    player.width = 24;
    player.rdel = 3;
    player.aniState = PLAYER1;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 2;
    player.bulletTimer = 20;
}

// Handle every-frame actions of the player
void updatePlayer() {

    // Move the player
    if (BUTTON_HELD(BUTTON_UP) && player.worldRow >= player.rdel) {

        player.worldRow -= player.rdel;

    } else if (BUTTON_HELD(BUTTON_DOWN) && player.worldRow + player.height + 5 + player.rdel <= SCREENHEIGHT) {

        player.worldRow += player.rdel;
    }

    // Move player horizontally at same speed as game, faster if powered up
    if (up == 1 || cheat == 1) {

        player.worldCol += 6;
    } else {

        player.worldCol += 2;

        // Animate player
        if (player.aniCounter % 30 < 15) {

            player.curFrame = 0;
        } else {

            player.curFrame = 1;
        }

        player.aniCounter++;
    }

    // Cheat, player is invincible as long as A is held
    if (BUTTON_HELD(BUTTON_A)) {

        cheat = 1;
    } else {

        cheat = 0;
    }

    // Set screenRow & screenCol of player
    player.screenRow = player.worldRow - vOff;
    player.screenCol = player.worldCol - hOff;
}

// Draw the player
void drawPlayer() {

    shadowOAM[0].attr0 = player.screenRow | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = player.screenCol | ATTR1_MEDIUM;

    if (up == 1 || cheat == 1) {

        shadowOAM[0].attr2 = ATTR2_TILEID(8, 0) | ATTR2_PALROW(0);
    } else {

        shadowOAM[0].attr2 = ATTR2_TILEID(player.curFrame * 4, 0) | ATTR2_PALROW(0);
    }
}

// Initialize cloud enemy
void initCloud() {

    for (int i = 0; i < CLOUDCOUNT; i++) {

        cloud[i].width = 24;
        cloud[i].height = 24;
        cloud[i].worldRow = 60;
        cloud[i].worldCol = 240;
        cloud[i].screenRow = 0;
        cloud[i].screenCol = 0;
        cloud[i].active = 0;
    }
}

// Spawn cloud
void spawnCloud() {

    // Find the first inactive cloud
    for (int i = 0; i < CLOUDCOUNT; i++) {

        if (!cloud[i].active) {

            // Position the new cloud
            cloud[i].worldRow = cloud[i].screenRow = rand() % (160 - cloud[i].height);
            cloud[i].worldCol = cloud[i].screenCol = (hOff + SCREENWIDTH);

            // Take the cloud out of the pool
            cloud[i].active = 1;

            // Break out of the loop
            break;
        }
    }
}

// Handle every-frame actions of cloud enemy
void updateCloud(ANISPRITE* c) {

    // Spawn clouds randomly
    if (cloudCounter >= spawnCloudTime) {

        spawnCloud();
        cloudCounter = 0;
        spawnCloudTime = (rand() % 10) + 30;
    }

    if (c->active) {

        // Handle collision with player
        if (collision(player.screenRow, player.screenCol, player.height, player.width,
            c->screenRow + 2, c->screenCol + 2, c->height, c->width)
            && up == 0
            && cheat == 0) {

            lives = 0;
        }

        // Set clouds inactive when off the screen
        if (c->screenCol < -c->width - 1) {

            c->active = 0;
        }

        // Set screenCol of all clouds
        c->screenCol = c->worldCol - hOff;
    }
}

// Draw the clouds
void drawCloud() {

    for (int i = 0; i < CLOUDCOUNT; i++) {

        if (cloud[i].active) {

            // Draw active clouds
            shadowOAM[i + 1].attr0 = (ROWMASK & cloud[i].screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i + 1].attr1 = (COLMASK & cloud[i].screenCol) | ATTR1_MEDIUM;
            shadowOAM[i + 1].attr2 = ATTR2_TILEID(0, 4) | ATTR2_PALROW(0);
        } else {

            shadowOAM[i + 1].attr0 = ATTR0_HIDE;
        }
    }
}

// Initialize spike enemy
void initSpike() {

    for (int i = 0; i < SPIKECOUNT; i++) {

        spike[i].width = 24;
        spike[i].height = 24;
        spike[i].worldRow = 60;
        spike[i].worldCol = 240;
        spike[i].screenRow = 0;
        spike[i].screenCol = 0;
        spike[i].active = 0;
    }
}

// Spawn spike
void spawnSpike() {

    // Find the first inactive spike
    for (int i = 0; i < SPIKECOUNT; i++) {

        if (!spike[i].active) {

            // Position the new spike
            spike[i].worldRow = spike[i].screenRow = rand() % (160 - spike[i].height);
            spike[i].worldCol = spike[i].screenCol = (hOff + SCREENWIDTH) + rand() % 240;

            // Take the spike out of the pool
            spike[i].active = 1;

            // Break out of the loop
            break;
        }
    }
}

// Handle every-frame actions of spike enemy
void updateSpike(ANISPRITE* s) {

    // Spawn spikes randomly
    if (spikeCounter >= spawnSpikeTime) {
        spawnSpike();
        spikeCounter = 0;
        spawnSpikeTime = (rand() % 25) + 175;
    }

    if (s->active) {

        // Collision with top of screen
        if (s->screenRow <= 0 && direction == -2) {

            direction = 2;
        }

        // Collision with bottom of screen
        if (s->screenRow + s->height >= SCREENHEIGHT && direction == 2) {

            direction = -2;
        }

        // Collision with player
        if (collision(player.screenRow, player.screenCol, player.height, player.width,
            s->screenRow, s->screenCol, s->height, s->width)
            && up == 0
            && cheat == 0) {

            lives = 0;
        }

        // Set screenRow & screenCol of all spikes
        s->screenCol = s->worldCol - hOff;

        // Move spike vertically
        s->screenRow += direction;

        // Set spikes inactive when off the screen
        if (s->screenCol < -s->width - 1) {

            s->active = 0;
        }
    }
}

// Draw the spikes
void drawSpike() {

    for (int i = 0; i < SPIKECOUNT; i++) {

        if (spike[i].active) {

            // Draw active spikes
            shadowOAM[i + 4].attr0 = (ROWMASK & spike[i].screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i + 4].attr1 = (COLMASK & spike[i].screenCol) | ATTR1_MEDIUM;
            shadowOAM[i + 4].attr2 = ATTR2_TILEID(0, 8) | ATTR2_PALROW(0);

        } else {

            shadowOAM[i + 4].attr0 = ATTR0_HIDE;
        }
    }
}

// Initialize the Ice King
void initIK() {

    iceking.worldRow = 60;
    iceking.worldCol = 240;
    iceking.screenRow = 0;
    iceking.screenCol = 0;
    iceking.height = 32;
    iceking.width = 48;
    iceking.cdel = 2;
    iceking.active = 0;
    iceking.aniState = IK1;
    iceking.aniCounter = 0;
    iceking.curFrame = 0;
    iceking.numFrames = 3;
    iceking.bulletTimer = 0;
}

// Spawn Ice King
void spawnIK() {

    // If Ice King is inactive, activate and position
    if (!iceking.active) {

        // Position the new iceking
        iceking.worldRow = rand() % (160 - iceking.height);
        iceking.worldCol = (hOff + SCREENWIDTH) + rand() % 240;

        // Set screenRow & screenCol of Ice King
        iceking.screenRow = iceking.worldRow - vOff;
        iceking.screenCol = iceking.worldCol - hOff;

        // Take the iceking out of the pool
        iceking.active = 1;
    }
}

// Handle every-frame actions of Ice King
void updateIK() {

    // Spawn iceking randomly
    if (icekingCounter >= spawnIcekingTime) {

        spawnIK();
        icekingCounter = 0;
        spawnIcekingTime = (rand() % 80) + 300;
    }

    if (iceking.active) {

        // Collision with player
        if (collision(player.screenRow, player.screenCol, player.height, player.width,
            iceking.screenRow + 5, iceking.screenCol, iceking.height, iceking.width)
            && up == 0
            && cheat == 0) {

            lives = 0;
        }

        // Move Ice King towards the player
        iceking.worldCol--;

        // Animate Ice King
        if (iceking.aniCounter % 36 < 12) {

            iceking.curFrame = 0;
        } else if (iceking.aniCounter % 36 < 24) {

            iceking.curFrame = 1;
        } else {

            iceking.curFrame = 2;
        }

        iceking.aniCounter++;

        // Set screenRow & screenCol of Ice King
        iceking.screenRow = iceking.worldRow - vOff;
        iceking.screenCol = iceking.worldCol - hOff;

        // Set Ice King inactive when off the screen
        if (iceking.screenCol < -iceking.width - 1) {

            iceking.active = 0;
        }

        // Fire IK bullets
        if (iceking.bulletTimer > 8 && up == 0) {

            fireIKBullet();
            iceking.bulletTimer = 0;
        }

        iceking.bulletTimer++;
    }
}

// Draw the Ice King
void drawIK() {

    if (iceking.active) {

        // Draw Ice King
        shadowOAM[6].attr0 = (ROWMASK & iceking.screenRow) | ATTR0_4BPP | ATTR0_WIDE;
        shadowOAM[6].attr1 = (COLMASK & iceking.screenCol) | ATTR1_LARGE;
        shadowOAM[6].attr2 = ATTR2_TILEID(iceking.curFrame * 4, 12) | ATTR2_PALROW(0);

    } else {

        shadowOAM[6].attr0 = ATTR0_HIDE;
    }
}

// Initialize the pool of IK bullets
void initIKBullets() {

    for (int i = 0; i < BULLETCOUNT; i++) {

        ikBullets[i].height = 5;
        ikBullets[i].width = 16;
        ikBullets[i].worldRow = -ikBullets[i].height * 2;
        ikBullets[i].worldCol = -ikBullets[i].width * 2;
        ikBullets[i].screenRow = ikBullets[i].worldRow;
        ikBullets[i].screenCol = ikBullets[i].worldCol;
        ikBullets[i].cdel = 2;
        ikBullets[i].active = 0;

    }
}

// Spawn a IK bullet
void fireIKBullet() {

    // Find first inactive IK bullet
    for (int i = 0; i < BULLETCOUNT; i++) {

        if (!ikBullets[i].active) {

            // Position new IK bullet
            ikBullets[i].worldRow = iceking.worldRow + (iceking.height / 2);
            ikBullets[i].worldCol = iceking.worldCol;

            ikBullets[i].screenRow = ikBullets[i].worldRow - vOff;
            ikBullets[i].screenCol = ikBullets[i].worldCol - hOff;

            // Take IK bullet out of the pool
            ikBullets[i].active = 1;

            // Break out of the loop
            break;
        }
    }
}

// Handle every-frame actions of a IK bullet
void updateIKBullet(ANISPRITE* b) {

    // If active, update; otherwise ignore
    if (b->active) {

        if (b->screenCol + b->width - 1 >= 0) {

            b->worldCol -= b->cdel;
        } else {

            b->active = 0;
        }

        // Handle player & IK bullet collision
        if (collision(player.worldRow, player.worldCol, player.height, player.width - 8,
            b->worldRow, b->worldCol, b->height, b->width)
            && up == 0
            && cheat == 0) {

            lives = 0;
        }

        // Set screenRow & screenCol of all IK bullets
        b->screenRow = b->worldRow - vOff;
        b->screenCol = b->worldCol - hOff;
    }
}

// Draw a IK bullet
void drawIKBullet(ANISPRITE* b) {

    if(b->active) {

        shadowOAM[7].attr0 = (ROWMASK & b->screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[7].attr1 = (COLMASK & b->screenCol) | ATTR1_SMALL;
        shadowOAM[7].attr2 = ATTR2_TILEID(2, 20) | ATTR2_PALROW(0);

    } else {

        shadowOAM[7].attr0 = ATTR0_HIDE;
    }
}

// Initialize power up
void initUp() {

    powerup.worldRow = 60;
    powerup.worldCol = 240;
    powerup.screenRow = 0;
    powerup.screenCol = 0;
    powerup.height = 16;
    powerup.width = 20;
    powerup.active = 0;
}

// Spawn power up
void spawnUp() {

    // If power up is inactive, activate and position
    if (!powerup.active) {

        // Position the new power up
        powerup.worldRow = powerup.screenRow = rand() % (160 - powerup.height);
        powerup.worldCol = powerup.screenCol = (hOff + SCREENWIDTH) + rand() % 240;

        // Take the power up out of the pool
        powerup.active = 1;
    }
}

// Handle every-frame actions of power up
void updateUp() {

    // Spawn power up randomly
    if (powerupCounter >= spawnPowerupTime) {

        spawnUp();
        powerupCounter = 0;
        spawnPowerupTime = (rand() % 300) + 800;
    }

    if (powerup.active) {

        // Collision with player
        if (collision(player.screenRow, player.screenCol, player.height, player.width,
            powerup.screenRow, powerup.screenCol, powerup.height, powerup.width)) {

            powerup.active = 0;
            up = 1;
        }

        // Set screenCol of power up
        powerup.screenCol = powerup.worldCol - hOff;

        // Set power up inactive when off the screen
        if (powerup.screenCol < -powerup.width - 1) {

            powerup.active = 0;
        }
    }
}

// Draw power up
void drawUp() {

    if (powerup.active) {

        // Draw Ice King
        shadowOAM[8].attr0 = (ROWMASK & powerup.screenRow) | ATTR0_4BPP | ATTR0_WIDE;
        shadowOAM[8].attr1 = (COLMASK & powerup.screenCol) | ATTR1_MEDIUM;
        shadowOAM[8].attr2 = ATTR2_TILEID(0, 20) | ATTR2_PALROW(0);

    } else {

        shadowOAM[8].attr0 = ATTR0_HIDE;
    }
}