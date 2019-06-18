/*	example code for cc65, for NES
 *  writing a full screen from RLE compressed .h file
 *  -can only be done with rendering off
 *	using neslib
 *	Doug Fraker 2018
 */


#include "LIB/neslib.h"
#include "LIB/nesdoug.h"
//#include "NES_ST/Girl3.h"
//#include "NES_ST/petsciirle.h"
//#include "NES_ST/petsciitest.h"
#include "NES_ST/girls.h"



unsigned char palette[]={//our 4 bg palettes
	0x07, 0x00, 0x00, 0x31,
	0x00, 0x00, 0x00, 0x21,
	0x00, 0x00, 0x00, 0x19,
	0x00, 0x00, 0x00, 0x16,
};



// example of sequential vram data
const unsigned char text[]={
'H',
'E',
'L',
'L',
'O',
' ',
'W',
'O',
'R',
'L',
'D',
'!',
}; // not a c string, so no zero terminating



void main (void) {

	ppu_off(); // screen off
	/*
	palette[0]=0x11;//transp ?
	palette[1]=0x11;//blue
	palette[2]=0x21;//blue
	palette[3]=0x31;//blue
	*/

	pal_bg(palette); //	load the palette

	vram_adr(NAMETABLE_A);
	// this sets a start position on the BG, top left of screen
	// vram_adr() and vram_unrle() need to be done with the screen OFF

	//vram_unrle(Girl3);// this unpacks an rle compressed full nametable created by NES Screen Tool
	//vram_unrle(petsciirle);// this unpacks an rle compressed full nametable created by NES Screen Tool

	//void __fastcall__ vram_read(unsigned char *dst,unsigned int size);
	//vram_write(petsciitest, 1024);
	vram_write(girls, 1024);

	//multi_vram_buffer_horz(const char * data, unsigned char len, int ppu_address);


	ppu_on_all(); // turn on screen

	//multi_vram_buffer_horz(text, sizeof(text), NTADR_A(1,1)); // pushes 12 bytes, horz

	while (1){
		// infinite loop
	}
}

