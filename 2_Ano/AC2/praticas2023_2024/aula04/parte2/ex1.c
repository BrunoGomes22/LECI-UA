#include <detpic32.h>

int main(void)
{
    TRISB = TRISB & 0x80FF; // RB14 to RB8 as output
    TRISDbits.TRISD5 = 0; // RD5 as output
    TRISDbits.TRISD6 = 0; // RD6 as output

    LATDbits.LATD5 = 1; // RD5 to 1
    LATDbits.LATD6 = 0; // RD6 to 0

    while(1)
    {
        switch(getChar())
        {
            case 'a': case 'A':
                LATB = (LATB & 0x80FF) | 0x0100; break;
            case 'b': case 'B':
                LATB = (LATB & 0x80FF) | 0x0200; break;
            case 'c': case 'C':
                LATB = (LATB & 0x80FF) | 0x0400; break;
            case 'd': case 'D':
                LATB = (LATB & 0x80FF) | 0x0800; break;
            case 'e': case 'E':
                LATB = (LATB & 0x80FF) | 0x1000; break;
            case 'f': case 'F':
                LATB = (LATB & 0x80FF) | 0x2000; break;
            case 'g': case 'G':
                LATB = (LATB & 0x80FF) | 0x4000; break;
            default:
                break;
        }
    }

    return 0;
}