BOOT = bootloader.asm
KERNEL = kernel.asm
OUT = build

all: boot kernel run

boot:
	mkdir -p $(OUT)
	nasm -f bin $(BOOT) -o $(OUT)/boot.bin

kernel:
	nasm -f elf32 $(KERNEL) -o $(OUT)/kernel.o
	ld -m elf_i386 -Ttext 0x1000 -o $(OUT)/kernel.bin $(OUT)/kernel.o --oformat binary

image: boot kernel
	cat $(OUT)/boot.bin $(OUT)/kernel.bin > $(OUT)/os-image.bin

run: image
	qemu-system-i386 -drive format=raw,file=$(OUT)/os-image.bin

clean:
	rm -rf $(OUT)
