#include <detpic32.h>

int main(void){
    //configure port rc14 as output
    TRISCbits.TRISC14 = 0;

    LATCbits.LATC14 = 0;
    while(1){
        //wait 0.5s
        //toggle rc14 value
        resetCoreTimer();
        while(readCoreTimer() < 1000000);
        LATCbits.LATC14 = !LATCbits.LATC14;
        
    }
    return 0;
}