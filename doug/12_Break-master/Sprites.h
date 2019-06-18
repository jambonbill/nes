// a 16x16 pixel metasprite

/*
Attribute byte :
76543210
||||||||
||||||++- Palette (4 to 7) of sprite
|||+++--- Unimplemented
||+------ Priority (0: in front of background; 1: behind background)
|+------- Flip sprite horizontally
+-------- Flip sprite vertically
*/

unsigned char PaddleSpr[]={
	  0,  0,155,0,
	  8,  0,189,0,
	  16,  0,189,0,
	  24,  0,157,0,
	128
};


unsigned char BallSpr[]={
	  0,  0, 83, 0x06,
	128
};




