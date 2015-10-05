// Shellcode.c
// Opens a shell as effective UID of 0
#include <stdio.h>
int main() {
    execve("/bin/sh", NULL, NULL);
}