.PHONY: all clean
all: nop

clean:
	git clean -fdx

nop.o: nop.asm
	nasm -f elf64 $^ -o $@

nop: nop.o
	ld --omagic $^ -o $@
	strip -s nop
