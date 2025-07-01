learning-os
===========

A minimal x86 operating system project written in NASM. This project builds a 512-byte bootloader and a tiny 32-bit kernel using NASM and runs it in QEMU.

Requirements
------------

- NASM
- QEMU
- GNU Make
- LD (binutils)

Project Structure
-----------------

- `bootloader.asm`: 16-bit real mode bootloader (512 bytes)
- `kernel.asm`: simple 32-bit protected mode kernel stub
- `Makefile`: build and run the OS using NASM, LD, and QEMU
- `build/`: output directory for binaries and images

Notes
-----

- Bootloader ends with 0xAA55 to be bootable
- Kernel is compiled as a flat binary and appended to the bootloader
- Runs in QEMU as a raw disk image

License
-------

MIT or public domain. Use freely.
