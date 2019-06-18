.PHONY: clean all

.PRECIOUS: *.o

all: pong.nes

pong: pong.nes

clean:
	@rm -fv pong.s
	@rm -fv pong.o
	@rm -fv pong.nes
	@rm -fv crt0.o

crt0.o: crt0.s
	ca65 crt0.s

%.o: %.c
	cc65 -Oi $< --add-source
	ca65 $*.s
	rm $*.s

%.nes: %.o crt0.o playPong.c
	ld65 -o $@ -C nrom_128_horz.cfg  crt0.o $< runtime.lib
