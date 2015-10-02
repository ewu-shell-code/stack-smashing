CC=gcc
SRCDIR=src
ODIR=out
CFLAGS=-o
EXECSTACK=-fno-stack-protector

stack-overrun:
	$(CC) $(EXECSTACK) $(CFLAGS) $(ODIR)/StackOverrun $(SRCDIR)/StackOverrun.c

shell-code:
	$(CC) $(CFLAGS) $(ODIR)/Shellcode $(SRCDIR)/Shellcode.c

.PHONY: clean

clean:
	rm -rf $(ODIR); mkdir $(ODIR); clear
