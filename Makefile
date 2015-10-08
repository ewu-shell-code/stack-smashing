SRCDIR=src
ODIR=out
CFLAGS=-o
NOSTACKPRTCTR=-fno-stack-protector
EXECSTACK=-z execstack

linux-stack-overrun:
	gcc -m32 $(NOSTACKPRTCTR) $(EXECSTACK) $(CFLAGS) $(ODIR)/StackOverrun $(SRCDIR)/StackOverrun.c
	
win_stack-overrun:
	bcc32 $(CFLAGS) $(ODIR)/StackOverrun $(SRCDIR)/StackOverrun.c

shell-code:
	gcc -static $(CFLAGS) $(ODIR)/Shellcode $(SRCDIR)/Shellcode.c

.PHONY: clean

clean:
	rm -rf $(ODIR); mkdir $(ODIR); clear
