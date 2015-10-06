# shell.asm
        global _start

_start:
        xor rdx, rdx
        xor rsi, rsi
        lea rdi, [rel buf]
        mov rax, 0x3b
        syscall
        int 0x80

buf:    db '/bin/sh', 0
   