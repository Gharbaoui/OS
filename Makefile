CC=nasm
FLAGS=-f bin

all: bootloader.bin


bootloader.bin : bootloader.s
	$(CC) $(FLAGS) bootloader.s -o bootloader.bin

re: clean all

clean:
	rm -f bootloader.bin
