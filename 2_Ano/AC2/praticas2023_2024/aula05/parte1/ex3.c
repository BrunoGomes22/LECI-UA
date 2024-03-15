#include <detpic32.h>

void send2displays(unsigned char value){
    
    static char display7Scodes[16] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D,
                                          0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C,
                                          0x39, 0x5E, 0x79, 0x71};
    static char displayFlag = 0;
    unsigned char digit_low  = value & 0x0F;
    unsigned char digit_high = value >>4;

    if(displayFlag == 0){
        LATD = (LATD & 0xFF9F) | 0x0020;
        LATB = (LATB & 0x80FF) | (display7Scodes[digit_low] << 8);
    }else{
        LATD = (LATD & 0xFF9F) | 0x0040;
        LATB = (LATB & 0x80FF) | (display7Scodes[digit_high] << 8);

    }

    displayFlag = !displayFlag;
}

void delay(int ms) {
    for(; ms > 0; ms--) {
        resetCoreTimer();
        while(readCoreTimer() < 20000);
    }
}

int main(void){

    TRISB &= 0x80FF;

    TRISD &= 0xFF9F;

    while(1){
        send2displays(0x15);
        delay(20);
    }

    return 0;
}