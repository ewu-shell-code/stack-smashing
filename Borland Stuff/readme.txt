in the borland_compiler folder run the the freecommandLinetools.exe file. The exe will create a Borland folder in the C:// drive, add the bin folder to your path.
Follow the instructions in "Using the Borland 5_5 Compiler...", which shows you the config files that are needed, add them to the bin folder.
Install a perl interpreter, like: http://www.activestate.com/activeperl/downloads. From the folder with the .c file run the command "bcc32 StackOverrun.c" which will 
create a StackOverrun.exe, then run the command: "perl HackOverrun.pl".