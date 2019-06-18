//this example code unpacks a RLE'd nametable into VRAM
//you can create the source data using NES Screen Tool

#include "neslib.h"

#include "test_nam.h"	//packed nametable data
#include "cradius.h"	//unpacked nametable data
#include "level1.h"	//unpacked nametable data
#include "level2.h"
#include "girlz.h"

const unsigned char palette[16]={ 0x0f,0x21,0x10,0x30,0x0f,0x14,0x21,0x31,0x0f,0x29,0x16,0x26,0x0f,0x09,0x19,0x29 };	//palette data

char x,y;

void main(void)
{
	//rendering is disabled at the startup, and palette is all black

	pal_bg(palette);//set background palette from an array

	vram_adr(NAMETABLE_A);//set VRAM address
	vram_unrle(test_nam);//unpack nametable into VRAM
	//vram_write(cradius, 1024);

	vram_adr(NAMETABLE_B);//set VRAM address
	vram_unrle(test_nam);//unpack nametable into VRAM
	//vram_write(level1, 1024);

	//vram_adr(NAMETABLE_C);//set VRAM address
	//vram_write(level2, 1024);

	//vram_adr(NAMETABLE_D);//set VRAM address
	//vram_write(girlz, 1024);

	ppu_on_all();//enable rendering

	while(1){
		ppu_wait_nmi();
		//scroll(x,0);
		scroll(0,y);
		x++;
		y++;
	}
}