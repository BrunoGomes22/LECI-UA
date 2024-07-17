#include <detpic32.h>

int main(void)
{
    TRISB = TRISB & 0x80FF; // RB14-RB8 configurados como output
    TRISDbits.TRISD5 = 0; // RD5 configurado como output
    TRISDbits.TRISD6 = 0; // RD6 configurado como output

    LATDbits.LATD5 = 1; // selecionar apenas o display menos significativo
    LATDbits.LATD6 = 0;

    while(1){
        switch(getChar()){
            case 'a': case 'A':
                LATB = (LATB & 0x80FF) | 0x7700; break; 
            case 'b': case 'B':
                LATB = (LATB & 0x80FF) | 0x7C00; break;
            case 'c': case 'C':
                LATB = (LATB & 0x80FF) | 0x3900; break;
            case 'd': case 'D':
                LATB = (LATB & 0x80FF) | 0x5E00; break;
            case 'e': case 'E':
                LATB = (LATB & 0x80FF) | 0x7900; break;
            case 'f': case 'F':
                LATB = (LATB & 0x80FF) | 0x7100; break;
            case 'g': case 'G':
                LATB = (LATB & 0x80FF) | 0x3D00; break;
            default:
                break;
        }
    }
}
