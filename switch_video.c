// switch_usb.c
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
    setuid(0);
    system("ddcutil setvcp 60 0x1b"); // switch to usb-c
    return 0;
}
