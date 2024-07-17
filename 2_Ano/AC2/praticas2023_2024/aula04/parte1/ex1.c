#include <detpic32.h>

void delay(int ms)
{
    resetCoreTimer();
    int timer = readCoreTimer();
    while(timer < ms * 20000){
        timer = readCoreTimer();
    }
}

int main(void)
{
    // Configure port RC14 as output
    TRISCbits.TRISC14 = 0;
    while(1)
    {
        //Wait 0.5s
        delay(500); // só se pode usar esta função se o tempo for multiplo de 1ms
        // Toggle RC14 port value
        LATCbits.LATC14 = !LATCbits.LATC14;
    }
    return 0;
}