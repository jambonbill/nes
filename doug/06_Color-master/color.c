/*	example code for cc65, for NES
 *  test the attribute table
 *  -writing to PPU with rendering off
 *	using neslib
 *	Doug Fraker 2018
 */


#include "LIB/neslib.h"
#include "LIB/nesdoug.h"
#include "NES_ST/blocks.h"


unsigned char palette[16]={
	0x0f,0x00,0x10,0x30, // grays
	0x00,0x01,0x21,0x31, // blues
	0x00,0x06,0x26,0x36, // reds
	0x00,0x09,0x29,0x39  // greens
};

const unsigned char text[]="Press Start";

#pragma bss-name(push, "ZEROPAGE")

// GLOBAL VARIABLES
int address;



void main (void) {

	ppu_off(); // screen off

	//pal_all();//all the palettes at once
	pal_bg(palette); //	load the bg palette
	//pal_spr(palette); //	load the sprite palette

	vram_adr(NAMETABLE_A);
	// this sets a start position on the BG, top left of screen

	//randomize block
	//blocks[rand8()]=rand8();

	vram_unrle(blocks);
	// this unpacks a compressed full nametable


	//get_at_addr(char nt, char x, char y); // pixel positions 0-0xff
	address = get_at_addr(0,0,0);
	vram_adr(address); // nametable A's attribute table 23c0-23ff

	// colorize //
	vram_fill(0x00, 8); // 8 bytes of 00 00 00 00
	vram_fill(0x54, 8); // 8 bytes of 01 01 01 01
	vram_fill(0xAA, 8); // 8 bytes of 10 10 10 10
	vram_fill(0xFF, 8); // 8 bytes of 11 11 11 11
	vram_fill(rand8(), 8); // 8 bytes of ?? ?? ?? ??

	//address = get_at_addr(0,0x40,0xa0);
	//vram_adr(address); // pick a random attribute byte on the lower half

	//vram_put(0xe4); // push 1 byte 11 10 01 00

					// note they go on the screen like this
					// 00  01
					// 10  11

	ppu_on_all(); // turn on screen


	while (1){

		ppu_wait_nmi(); // wait till beginning of the frame

		//palette[0]=rand8();
		//pal_bg(palette); //	load the palette
		//address = get_at_addr(0,rand8(),rand8());
		delay(60); // wait 100 frames
		clear_vram_buffer(); // clear the buffer at the start of each frame

		address = 0x23c0;
		vram_adr(address); // nametable A's attribute table 23c0-23ff
		//vram_adr(NTADR_A(2,3)); // nametable A's attribute table 23c0-23ff

		vram_fill(rand8(), 64); // 8 bytes of color randomness

		//ppu_wait_nmi(); // waits till nmi, and push new updates to the ppu

	}
}

