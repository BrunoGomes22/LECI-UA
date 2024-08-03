#include <detpic32.h>

void delay(int ms);

int main(void){
    TRISEbits.TRISE0 = 0; // RE0 configured as output
    TRISDbits.TRISD8 = 1; // RD8 configured as input

    while(1){

        while(PORTDbits.RD8 == 0){ //while button RD8 is pressed
            LATEbits.LATE0 = 1;
            delay(3000); // 3s
            LATEbits.LATE0 = 0;
        } 

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