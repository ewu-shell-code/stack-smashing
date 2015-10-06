CC=gcc
SRCDIR=src
ODIR=out
CFLAGS=-o
NOSTACKPRTCTR=-fno-stack-protector
EXECSTACK=-z execstack

stack-overrun:
	$(CC) -ggdb $(NOSTACKPRTCTR) $(EXECSTACK) $(CFLAGS) $(ODIR)/StackOverrun $(SRCDIR)/StackOverrun.c

shell-code:
	$(CC) -static $(CFLAGS) $(ODIR)/Shellcode $(SRCDIR)/Shellcode.c

.PHONY: clean

clean:
	rm -rf $(ODIR); mkdir $(ODIR); clear
