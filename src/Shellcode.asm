global _start

_start:
      mov edx, 0
      mov esi, 0
      lea edi, [rel buf]
      mov eax, 0x3b
      syscall
   
buf:  db '/bin/sh', 0
   