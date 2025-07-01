; kernel.asm — very simple 32-bit kernel stub

[BITS 32]
[GLOBAL _start]

_start:
    mov al, 'K'         ; Put 'K' into AL
    mov ah, 0x0E        ; BIOS teletype mode
    int 0x10            ; Print 'K'
    hlt                 ; Halt the CPU