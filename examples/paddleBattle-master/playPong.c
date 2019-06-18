#define BALLS_MAX 1

#define MIDDLE_X 240>>1
#define MIDDLE_Y 256>>1

#define PADDLE_SPEED 4
#define BALL_Y_SPEED 2

#include "random.h"

//balls parameters
static unsigned char ball_x[BALLS_MAX];
static unsigned char ball_y[BALLS_MAX];
static unsigned char ball_dx[BALLS_MAX];
static unsigned char ball_dy[BALLS_MAX];

unsigned char score[2];

//two players coords
static unsigned char paddle_x[2];
static unsigned char paddle_y[2];

const unsigned char paddleMin[2] = {6,              256 - (8 * 5) };
const unsigned char paddleMax[2] = {256 - (8 * 30), 224};

//first player metasprite,  data structure explained in neslib.h
const unsigned char paddle1[]={
  0,  0, 0x46, 0,
  8,  0, 0x47, 0,
  16, 0, 0x48, 0,
  128
};

//second player metasprite,  the only difference is palette number
const unsigned char paddle2[]={
  0,  0, 0x46, 1,
  8,  0, 0x47, 1,
  16, 0, 0x48, 1,
  128
};


void showScores(){
  ppu_off();//disable rendering

  vram_adr(NTADR_A(1,1));
  vram_put(score[0]+0x10);

  vram_adr(NTADR_A(1,28));
  vram_put(score[1]+0x10);

  ppu_on_all();//enable rendering

  return;
}

void playPong(
  unsigned char i,
  unsigned char j,
  unsigned char pad,
  unsigned char spr,
  unsigned char touch,
  unsigned char frame
  ) {

  unsigned playing = 1;


  //set initial coords
  paddle_x[0]=108;
  paddle_y[0]=10;
  paddle_x[1]=168;
  paddle_y[1]=222;

  //init other vars
  score[0] = 0;
  score[1] = 0;
  touch=0;//collision flag
  frame=0;//frame counter

  showScores();

  music_play(0);

  //initialize balls parameters
  for(i=0;i<BALLS_MAX;++i)
  {
    //starting coordinates
    ball_x[i]=MIDDLE_X;
    ball_y[i]=MIDDLE_Y;

    //horizontal speed
    ball_dx[i]=random();

    //vertical speed
    ball_dy[i]=BALL_Y_SPEED;
  }

  while(playing == 1) {
    ppu_wait_nmi();//wait for next TV frame
    //flashing color for touch
    /*j = frame & 1 ? 0x28 : 0x2a;*/

    //balls
    spr=0;
    for(i=0;i<BALLS_MAX;++i) {
      //set a sprite for current ball
      spr=oam_spr(ball_x[i],ball_y[i],0x40,i%BALLS_MAX,spr);//0x40 is tile number, i&1... is palette

      //move the ball
      ball_x[i]+=ball_dx[i];
      ball_y[i]+=ball_dy[i];

      //check for collision for a smaller bounding box
      //metasprite is 24x24,  collision box is 20x20
      if(!(paddle_x[0] + 24 <  ball_x[i] ||
          paddle_x[0]  + 2  >= ball_x[i] ||
          paddle_y[0]  + 9  <  ball_y[i] ||
          paddle_y[0]  + 2  >= ball_y[i]
      )) {
        ball_dy[i]=-ball_dy[i];
        touch=1;
      }
      else {
        touch=0;
      }

      pal_col(17, touch?0x2a:0x11);//set first sprite color

      if(!(paddle_x[1] + 24 <  ball_x[i]  ||
          paddle_x[1]  + 2  >= ball_x[i]  ||
          paddle_y[1]  + 9  <  ball_y[i]  ||
          paddle_y[1]  + 2  >= ball_y[i] + 8
      )) {
        ball_dy[i] = -ball_dy[i];
        ball_y[i] -= 2;
        touch=1;
      }
      else {
        touch=0;
      }
      pal_col(21, touch?0x2a:0x05);//set second sprite color

      //bounce the ball off the edges
      if(ball_x[i] >= (256-8)) {
        ball_dx[i] = -ball_dx[i];
      }

      //score, reset ball
      if(ball_y[i]>=(240-8))
      {
        if(ball_y[i]>=(240))
          score[1] += 1;
        else
          score[0] += 1;
        showScores();

        ball_dy[i] = -ball_dy[i];
        ball_dx[i] = random();
        ball_y[i]  = MIDDLE_Y;
        ball_x[i]  = MIDDLE_X;
      }

    }

    //process players
    for(j=0;j<2;++j) {
      //display metasprite
      spr=oam_meta_spr(paddle_x[j], paddle_y[j], spr, !j?paddle1:paddle2);

      //poll pad and change coordinates
      pad=pad_poll(j);

      if(pad&PAD_LEFT &&paddle_x[j]>  0) paddle_x[j] -= PADDLE_SPEED;
      if(pad&PAD_RIGHT&&paddle_x[j]<232) paddle_x[j] += PADDLE_SPEED;
      if(pad&PAD_UP   &&paddle_y[j]> paddleMin[j])  paddle_y[j]-=2;
      if(pad&PAD_DOWN &&paddle_y[j]< paddleMax[j])  paddle_y[j]+=2;

      if (pad&PAD_SELECT){
        playing = 0;
      }
    }

    frame++;
  }

  return;
}
