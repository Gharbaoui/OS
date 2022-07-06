CC=nasm
FLAGS=-f bin

all: halt_bootloader.bin

display: display_bootloader.s
	$(CC) $(FLAGS) display_bootloader.s -o display_bootloader.bin

halt_bootloader.bin : halt_bootloader.s
	$(CC) $(FLAGS) halt_bootloader.s -o halt_bootloader.bin

re: clean all

clean:
	rm -f halt_bootloader.bin display_bootloader.bin
