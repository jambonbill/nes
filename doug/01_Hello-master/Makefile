.PHONY: clean all

.PRECIOUS: *.o

all: hello.nes

clean:
	@rm -fv hello.s
	@rm -fv hello.o
	@rm -fv hello.nes
	@rm -fv crt0.o

crt0.o: crt0.s
	ca65 crt0.s

%.o: %.c
	cc65 -Oi $< --add-source
	ca65 $*.s
	rm $*.s

%.nes: %.o crt0.o
	ld65 -o $@ -C nrom_32k_vert.cfg  crt0.o $< nes.lib
#ld65 -C nrom_32k_vert.cfg -o $name.nes crt0.o $name.o nes.lib -Ln labels.txt

run:
	fceux hello.nes