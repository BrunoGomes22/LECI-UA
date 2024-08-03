#include <detpic32.h>

int main(void){
    // configure RD0 and RD2 as output
    TRISDbits.TRISD0 = 0;
    TRISDbits.TRISD2 = 0;

    // reset RD0 and RD2
    LATDbits.LATD0 = 0;
    LATDbits.LATD2 = 0;

    // Timer T1 configuration (5 Hz)
    T1CONbits.TCKPS = 2; // k = 64
    PR1 = 62499;
    TMR1 = 0;
    T1CONbits.TON = 1;

    IPC1bits.T1IP = 2; // Interrupt priority
    IEC0bits.T1IE = 1; // Enable timer T1 interrupts
    IFS0bits.T1IF = 0; // Reset timer T1 interrupt flag

    // Timer T3 configuration (25 Hz)
    T3CONbits.TCKPS = 4; // k = 16
    PR3 = 49999;
    TMR3 = 0;
    T3CONbits.TON = 1;

    IPC3bits.T3IP = 2; // Interrupt priority
    IEC0bits.T3IE = 1; // Enable timer T3 interrupts
    IFS0bits.T3IF = 0; // Reset timer T3 interrupt flag

    EnableInterrupts(); // Global Interrupt Enable

    while(1);

    return 0;
}

void _int_(4) isr_T1(void){ // 4 is the vector number of T1
    printInt10(1);
    LATDbits.LATD0 = !LATDbits.LATD0;
    IFS0bits.T1IF = 0; // Reset timer T1 interrupt flag
}

void _int_(12) isr_T3(void){ // 12 is the vector number of T3
    printInt10(3);
    LATDbits.LATD2 = !LATDbits.LATD2;
    IFS0bits.T3IF = 0; // Reset timer T3 interrupt flag
}