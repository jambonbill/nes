.PHONY: clean all

.PRECIOUS: *.o

clean:
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
