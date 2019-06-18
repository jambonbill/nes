.PHONY: clean all

.PRECIOUS: *.o

all: example1.nes example2.nes example3.nes example4.nes example5.nes example5.nes example6.nes example7.nes example8.nes example9.nes example10.nes example11.nes

clean:
	@rm -fv example1.s example2.s example3.s example4.s example5.s
	@rm -fv *.o
	@rm -fv *.nes
	@rm -fv crt0.o

crt0.o: crt0.s
	ca65 crt0.s

%.o: %.c
	cc65 -Oi $< --add-source
	ca65 $*.s
	rm $*.s

%.nes: %.o crt0.o
	ld65 -o $@ -C nrom_128_horz.cfg  crt0.o $< nes.lib
