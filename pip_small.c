// pip_small.c
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
    setuid(0);
    system("ddcutil setvcp E9 0x21"); // Change this for each computer
    return 0;
}
