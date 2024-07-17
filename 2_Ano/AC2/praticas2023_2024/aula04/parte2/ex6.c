#include <detpic32.h>

int main(void)
{
    static const char disp7Scodes[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
    // configure RB0 to RB3 as inputs
    TRISB = (TRISB & 0xFFF0) | 0x000F;
    // configure RB8 to RB14 and RD5 to RD6 as outputs
    TRISB = TRISB & 0x80FF;

    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    // Select display low
    LATDbits.LATD6 = 0;
    LATDbits.LATD5 = 1;

    while(1)
    {
        // read dip-switch
        // convert to 7 segments code
        // send to display
        LATB = (LATB & 0x80FF) | (disp7Scodes[PORTB & 0x000F] << 8); // ex: disp7Scode[0x000A] -> 0x6F
    }
    return 0;
}