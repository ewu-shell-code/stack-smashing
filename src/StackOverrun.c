/*
  StackOverrun.c
  This program shows an example of how a stack-based 
  buffer overrun can be used to execute arbitrary code.  Its 
  objective is to find an input string that executes the function bar.
*/


#include <stdio.h>
#include <string.h>

void foo(const char* input)
{
    char buf[10];
    //int stackCount = 10;
    
    printf("input: %p\n", input);
    //What? No extra arguments supplied to printf?
    //It's a cheap trick to view the stack 8-)
    //We'll see this trick again when we look at format strings.
    printf("My stack looks like:\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n\n");
    
    // for (int i = 0; i < stackCount; ++i) {
//         printf("%p\n");
//     }
//
//     printf("\n")

    //Pass the user input straight to secure code public enemy #1.
    strcpy(buf, input);
    printf("%s\n", buf);
    printf("%p\n", buf);
    
    // char *c;
    // long l = 0x7fffffffdb44;
    // c = l;
    //
    // printf("Char contains: %s\n, at: %p\n", c, c);
    
    printf("Now the stack looks like:\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n\n");
}

void bar(void)
{
    //printf("Augh! I've been hacked!\n");
    execve("/bin/sh", NULL, NULL);
}

void temp(void)
{
    int var_a;
    printf("temp function");
}

int main(int argc, char* argv[])
{
    //Blatant cheating to make life easier on myself
    printf("Address of main = %p\n", main);
    printf("Address of foo = %p\n", foo);
    printf("Address of bar = %p\n", bar);
    printf("Address of temp = %p\n", temp);
    if (argc < 2) 
    {
        int i;
        for (i = 0; i < argc; ++i) {
            printf("%s\n", argv[i]);
        }
        printf("Arg Count: %d, Please supply a string as an argument!\n", argc);
        return -1;
	}
    int var0 = 0;
    printf("Address of var0 = %p\n", &var0);
    
    //printf("Stack before foo looks like:\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n%p\n\n");
    
    foo(argv[1]);
    int var = 0;
    printf("Address of var = %p\n", &var);
    temp();
    return 0;
}
