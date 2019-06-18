//this example shows metasprite use,  two pads polling,
//and simple collision detection that changes palette

#include "neslib.h"
#include "put_str.h"
#include "playPong.c"

#define PONG 1

//variables
static unsigned char mode = PONG;

static unsigned char i, j;
static unsigned char pad, spr;
static unsigned char touch;
static unsigned char frame;

//palette for balls, there are four sets for different ball colors
const unsigned char palSprites[20]={
  0x0f,0x11,0x21,0x31, //icy blue
  0x0f,0x05,0x26,0x36, //strawberry yogurt
  0x0f,0x16,0x27,0x18, //rasta commando
  0x0f,0x0a,0x19,0x3a, //grass stain
  0x0f,0x00,0x10,0x20, //grey
};

void main(void)
{
  pal_spr(palSprites);//set palette for sprites
  pal_col(1,0x30);    //set white text color

  //now the main loop
  while(1) {
    if (mode == PONG) {
      playPong(i, j, pad, spr, touch, frame);
      mode = 0;
    }
    else { //game select
      music_stop();
      ppu_off();
      put_str(NTADR_A(1,12), "USE D-PAD TO PICK A GAME");
      ppu_on_all();

      while(mode == 0) {
        pad=pad_poll(0);
        if(pad&PAD_LEFT)  mode = PONG;
        if(pad&PAD_RIGHT) mode = PONG;
        if(pad&PAD_UP)    mode = PONG;
        if(pad&PAD_DOWN)  mode = 0;
      }
      ppu_off();
      put_str(NTADR_A(1,12), "                        "); //uh
      ppu_on_all();

    }

  }
}
