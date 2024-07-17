#include <detpic32.h>
void delay(int ms);

int main(void)
{
    unsigned char segment;
    int i;
    // configure RD5-RD6 as outputs
    TRISD = TRISD & 0x009F;

    TRISB = TRISB & 0x80FF; // configure RB8-RB14 as outputs

    // enable display low (RD5) and disable display high (RD6)
    LATD = (LATD & 0xFF9F) | 0x0020;

    while(1)
    {
        segment = 1;
        for(i=0; i < 7; i++)
        {
            // send "segment" value to display
            LATB = (LATB & 0x80FF) | ((unsigned int)(segment)) << 8;
            // wait 0.5 second
            delay(500);
            segment = segment << 1;
        }
        // toggle display selection
        LATD = LATD ^ 0x0060;
    }
    return 0;
}

void delay(int ms)
{
    resetCoreTimer();
    int timer = readCoreTimer();
    while(timer < ms * 20000){
        timer = readCoreTimer();
    }
}