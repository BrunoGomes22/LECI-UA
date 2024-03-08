#include <detpic32.h>


void delay(int ms)
{
    resetCoreTimer();
    int timer = readCoreTimer();
    while (timer < ms * 20000)
    {
        timer = readCoreTimer();
    }
}

int main(void)
{
    // Configure port RC14 as output
    TRISCbits.TRISC14 = 0;
    while(1){
        // wait 0.5s
        delay(500); // 0.5s
        // toggle rc14 port value
        LATCbits.LATC14 = !LATCbits.LATC14;
    }
    return 0;
}

