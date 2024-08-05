#include <detpic32.h>

void delay(int ms);

static volatile int counter = 0;

int main(void){
    TRISEbits.TRISE0 = 0; // RE0 configured as output
    TRISDbits.TRISD8 = 1; // RD8 configured as input
    LATEbits.LATE0 = 0; // RE0 = 0

    // Timer 2 Configuration (generating 2Hz delay 1/2 = 0.5s) 
    T2CONbits.TCKPS = 7;    // 1:256 prescaler
    PR2 = 39061;            
    TMR2 = 0;               // Clear timer T2 count register
    T2CONbits.TON = 1;      // Enable timer T2 (must be the last command of the
                            // timer configuration sequence)

    IPC2bits.T2IP = 2; // Interrupt priority (must be in range [1..6])
    IEC0bits.T2IE = 0; // Disable timer T2 interrupts
    IFS0bits.T2IF = 0; // Reset timer T2 interrupt flag

    //INT1 interruption configuration
    IPC1bits.INT1IP = 26; // Interrupt priority [28:26]
    IEC0bits.INT1IE = 1;  // Enable INT1 interrupts
    IFS0bits.INT1IF = 0;  // Reset INT1 interrupt flag
    INTCONbits.INT1EP = 0; // gerar interrupcao na transicao descendente

    EnableInterrupts();

    while(1);

    return 0;

}


void _int_(8) isr_T2(void){
    
    if(counter < 6){        // 6 * 0.5 = 3s
        LATEbits.LATE0 = 1;
        counter++;
    }
    else{
        LATEbits.LATE0 = 0;
        IEC0bits.T2IE = 0;  // Disable timer T2 interrupts (only INT1 can activate T2 interruption)
    }
    
    IFS0bits.T2IF = 0; // Reset timer T2 interrupt flag
}

void _int_(7) isr_INT1(void){
    counter = 0;
    IEC0bits.T2IE = 1; // Enable timer T2 interrupts
    IFS0bits.INT1IF = 0;  // Reset INT1 interrupt flag
}
