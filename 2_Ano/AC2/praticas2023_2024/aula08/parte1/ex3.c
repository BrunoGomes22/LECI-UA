#include <detpic32.h>

volatile int counter = 0;

int main(void){
    // Configure Timer T3 with interrupts enable
    T3CONbits.TCKPS = 7; // k_prescaler = 256
    PR3 = 39062;         
    TMR3 = 0;          // Clear timer T3 count register
    T3CONbits.TON = 1; // Enable timer T3

    IPC3bits.T3IP = 2; // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1; // Enable timer T3 interrupts
    IFS0bits.T3IF = 0; // Reset timer T3 interrupt flag

    EnableInterrupts();
    while(1);
    return 0;
}

void _int_(12) isr_T3(void) // 12 is the T3 vector number
{
    counter++;
    if(counter == 2){ 
        putChar('.');
        counter = 0;
    }
    IFS0bits.T3IF = 0; // Reset timer T3 interrupt flag
}