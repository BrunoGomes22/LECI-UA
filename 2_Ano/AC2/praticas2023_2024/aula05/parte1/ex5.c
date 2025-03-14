#include <detpic32.h>

void delay(int ms);
void send2displays(unsigned char value);

int main(void)
{
    // declare variables
    // initialize ports
    TRISB = TRISB & 0x80FF; // RB8-RB14 configured as output
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    int i;
    int counter = 0;
    while(1)
    {
        i = 0;
        do
        {
            send2displays(counter);
            // wait 20 ms (1/50Hz)
            delay(20);
        } while(++i < 10); // 20ms * 10 = 200ms 
        // increment counter (mod 256)
        counter++; // contador é incrementado com freq de 5hz
    }
    return 0;
}

void send2displays(unsigned char value)
{
    static const char disp7Scodes[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
    static char displayFlag = 0;

    if(displayFlag == 0){
        //select display low
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        // send digit_low (dl) to display: dl = value & 0x0F
        LATB = (LATB & 0x80FF) | (disp7Scodes[value & 0x0F] << 8);
    }
    else{
        //select display high
        LATDbits.LATD6 = 1;
        LATDbits.LATD5 = 0;
        //send digit_high (dh) to display: dh = value >> 4
        LATB = (LATB & 0x80FF) | (disp7Scodes[value >> 4] << 8);
    }
    
    displayFlag = !displayFlag; //toggle displayFlag
    
}

void delay(int ms)
{
    resetCoreTimer();
    int timer = readCoreTimer();
    while(timer < ms * 20000){
        timer = readCoreTimer();
    }
}