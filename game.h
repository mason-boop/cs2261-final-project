// Constants
#define MAPHEIGHT 256
#define MAPWIDTH 516

// Sprite Struct
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

// Constants
#define CLOUDCOUNT 3
#define SPIKECOUNT 2
#define BULLETCOUNT 2

// Variables
extern ANISPRITE player;

extern ANISPRITE cloud[CLOUDCOUNT];
extern ANISPRITE spike[SPIKECOUNT];

extern ANISPRITE iceking;
extern ANISPRITE ikBullets[BULLETCOUNT];

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

// Sprite enums
enum {PLAYER1, PLAYER2};
enum {IK1, IK2, IK3};

// Prototypes
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