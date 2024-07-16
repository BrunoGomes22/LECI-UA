#include <detpic32.h>
volatile int count = 0;

int main(void)
{
    T3CONbits.TCKPS = 7;
    PR3 = 39063;
    TMR3 = 0;
    T3CONbits.TON = 1;

    IPC3bits.T3IP = 2;
    IEC0bits.T3IE = 1;
    IFS0bits.T3IF = 0;

    EnableInterrupts();

    while(1);

    return 0;

}
 
void _int_(12) isr_T3(void){   //vector 12 do timer T3
    count++;
    if(count == 2){
        putChar('.');
        count = 0;
    }
    IFS0bits.T3IF = 0;
    
}