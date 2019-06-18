//jambonbill: this is my first petscii-nes program

#include "neslib.h"



//variables
static unsigned char i;
static unsigned char sprnum;
static unsigned char x,y;
static unsigned char rx,ry;//randx,randy

//the update list, there is room for 6 non-sequental tiles (3 bytes per tile),
//two sequences of 4 tiles (3+4 bytes each), and end marker

//static unsigned char list[6*3+7+7+1];
static unsigned char list[6*3+1];

//init data for the update list, it contains MSB and LSB of a tile address
//in the nametable, then the tile number

const unsigned char list_init[6*3+1]={

	MSB(NTADR_A(2,2)),LSB(NTADR_A(2,2)),0,//non-sequental updates
	MSB(NTADR_A(3,2)),LSB(NTADR_A(3,2)),0,
	MSB(NTADR_A(4,2)),LSB(NTADR_A(4,2)),0,
	MSB(NTADR_A(6,2)),LSB(NTADR_A(6,2)),0,
	MSB(NTADR_A(7,2)),LSB(NTADR_A(7,2)),0,
	MSB(NTADR_A(8,2)),LSB(NTADR_A(8,2)),0,

//	MSB(NTADR_A(2,4))|NT_UPD_HORZ,LSB(NTADR_A(2,4)),4,'H'-0x40,'O'-0x40,'R'-0x40,'Z'-0x40,//horizontal update sequence
//	MSB(NTADR_A(2,6))|NT_UPD_VERT,LSB(NTADR_A(2,6)),4,'V'-0x40,'E'-0x40,'R'-0x40,'T'-0x40,//vertical update sequence

	NT_UPD_EOF
};


void bgClearA(void){
	//this is slow and should be performed when screen is off
	vram_adr(NTADR_A(0,0));// sets a start address
	for(ry=0;ry<30;ry++){
		for(rx=0;rx<32;rx++){
			vram_put(0x20);//petscii space
		}
	}
}

void eraseAll(void){//clear screen
	while(1)
	{
		ppu_wait_frame();//wait for next TV frame
		//do...
	}
}

void main(void)
{

	bgClearA();

	pal_col(1,0x21);//blue color for text
	pal_col(2,0x21);//blue color for text
	pal_col(3,0x21);//blue color for text
	pal_col(17,0x14);//white color for sprite
	pal_col(18,0x24);//white color for sprite
	pal_col(19,0x25);//white color for sprite

	memcpy(list,list_init,sizeof(list_init));
	set_vram_update(list);//perform a serie of updates

	ppu_on_all();//enable rendering

	x=1;//sprite position
	y=1;
	sprnum=0x4f;
	//now the main loop

	while(1)
	{
		ppu_wait_frame();//wait for next TV frame

		//seed_rng(); //(nesdoug) the frame count was ticking up every frame till Start pressed
		pal_col(18,rand8());//rand color for sprite
		oam_spr(x*8, y*8, sprnum, 0, 0);//put sprite

		i=pad_poll(0);//poll the pad and change coordinates according to pressed buttons
		if(i&PAD_LEFT &&x>  0) x-=1;
		if(i&PAD_RIGHT&&x<248) x+=1;
		if(i&PAD_UP   &&y>  0) y-=1;
		if(i&PAD_DOWN &&y<232) y+=1;
		if(i&PAD_START){
			sprnum=rand8();
			bgClearA();//break
		}

		if(i&PAD_SELECT){
			sprnum++;
		}

		//put sprite x as 3-digit number into the update list

		//rx=rand8()%32;
		//ry=rand8()%30;
		if(i&PAD_A){
			list[0]=MSB(NTADR_A(x,y));//compute nametable adress MSB
			list[1]=LSB(NTADR_A(x,y));//compute nametable adress LSB
			list[2]=sprnum;//set value
		}

		if(i&PAD_B){
			list[0]=MSB(NTADR_A(x,y));//compute nametable adress MSB
			list[1]=LSB(NTADR_A(x,y));//compute nametable adress LSB
			list[2]=0x20;//set value
		}

		/*

		list[5]=0x30+x/10%10;
		list[8]=0x30+x%10;

		//put sprite y 3-digit number into the update list

		list[11]=0x30+y/100;
		list[14]=0x30+y/10%10;
		list[17]=0x30+y%10;
		*/
	}
}


