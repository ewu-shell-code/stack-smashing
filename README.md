# stack-smashing
A buffer overflow program in C

## About
This is a team assignment. Requirements are to do a buffer overflow passing in shell-code. This project uses a perl script to run the exploit. Supported operating systems are Linux using `gcc` compiler and Windows using `borland` compiler. Mac is currently not supported.

## Developers
Team name is 'shell-code', members:
Tim Unger
Sam Gronhovd
Will Czifro

## Proof It Works

Screenshots of it running successfully will be located in `results/`. There you will see it jumping to bar function for both Windows and Linux as well as proof of it spawning a shell on Linux. Assembly version of the shellcode is provided as will in `src/`. The assembly only supports spawning Linux shell. Makefile does not support compiling it. 

## Linux Setup

This has been tested on Ubuntu 14.04LTS and can successfully spawn a shell.

1. clone repo
2. turn off ASLR using `sudo sysctl -w kernel.randomize_va_space=0`, this will force program to use same address each execution.
3. in directory, run `make linux-stack-overrun` to compile C program in 32bit mode, 64bit not supported
    1. if you get an error, you will need to install `libc6-dev-i386` to compile as 32bit
4. run `perl Linux-HackOverrun.pl` to run exploit to call different function defined in C program
    1. If it does not work right away, you may need to change the address in the script to what is printed out for the bar function (in reverse order)
5. to open a shell with buffer overflow exploit, run `perl HackOverrun-shell.pl`
    1. If it does not work right away, you may need to change the address it jumps to ($shell_code_address in perl); the console output prints the address of the shellcode

## Windows Setup

Development for this has been limited, so spawning a shell was not accomplished

1. clone repo
2. install borland compiler for Windows, follow all instructions
3. install a perl interpreter
4. run `make win-stack-overrun`
5. run `perl Win-HackOverrun.pl`
   1. If it does not work right away, address in script may need to be changed to that of bar function shown in console output

## Note
This program has malicious potential and should be used with extreme caution. This project is under the MIT License. We share no liability of any harm that comes from the usage of this code. You are to use this at your own risk.