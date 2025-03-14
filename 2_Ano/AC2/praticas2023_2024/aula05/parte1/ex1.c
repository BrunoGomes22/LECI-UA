#include <detpic32.h>

void send2displays(unsigned char value)
{
    static const char disp7Scodes[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
    //select display high
    LATDbits.LADTD6 = 1;
    //send digit_high (dh) to display: dh = value >> 4
    LATB = (LATB & 0x80FF) | value >> 4;
    //select display low
    LATDbits.LADTD5 = 1;
    // send digit_low (dl) to display: dl = value & 0x0F
    LATB = (LATB & 0x80FF) | value & 0x0F;
}
