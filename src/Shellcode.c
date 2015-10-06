// Shellcode.c
// Opens a shell as effective UID of 0
#include <unistd.h>
void main(void) {
    char *name[2];
    name[0] = "/bin/sh";
    name[1] = NULL;
    execve(name[0], name, NULL);
}