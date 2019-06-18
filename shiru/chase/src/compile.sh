name="Chase.nes"
cc65 -Oi game.c
ca65 crt0.s
ca65 game.s
#ld65 -C nrom_128_horz.cfg -o $name crt0.o game.o runtime.lib