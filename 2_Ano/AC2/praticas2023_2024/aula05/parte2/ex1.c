#include <detpic32.h>

void delay(int ms);
void send2displays(unsigned char value);
unsigned char toBCD(unsigned char value);

int main(void)
{
    // declare variables
    // initialize ports
    TRISB = TRISB & 0x80FF; // RB8-RB14 configured as output
    TRISE = TRISE & 0xFF00; // RE7-RE0 configured as output
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    int i;
    int counter = 0;
    while(1)
    {
        i = 0;
        do
        {
            send2displays(toBCD(counter));
            // wait 10 ms
            delay(10);
        } while(++i < 50); // 10ms * 50 = 500ms 
        // increment counter
        counter++; // contador é incrementado com freq de 2hz
        if(counter == 60){
            counter = 0;
        }
        
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
        LATE = (LATE & 0xFFF0) | (value & 0x0F);
    }
    else{
        //select display high
        LATDbits.LATD6 = 1;
        LATDbits.LATD5 = 0;
        //send digit_high (dh) to display: dh = value >> 4
        LATB = (LATB & 0x80FF) | (disp7Scodes[value >> 4] << 8);
        if((value & 0xF0) != 0){
            LATE = (LATE & 0xFF0F) | (value & 0xF0) >> 4;
        }
        
    }

    displayFlag = !displayFlag; //toggle displayFlag
    
}

unsigned char toBCD(unsigned char value){
    return ((value/10) << 4) + (value %10);
}

void delay(int ms)
{
    resetCoreTimer();
    int timer = readCoreTimer();
    while(timer < ms * 20000){
        timer = readCoreTimer();
    }
}