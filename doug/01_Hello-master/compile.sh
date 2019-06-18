name="hello"


cc65 -Oirs $name.c --add-source
ca65 crt0.s
ca65 $name.s -g

ld65 -C nrom_32k_vert.cfg -o $name.nes crt0.o $name.o nes.lib -Ln labels.txt

rm *.o
mv $name.nes BUILD/$name.nes
fceux BUILD/$name.nes
