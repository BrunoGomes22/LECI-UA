#include <detpic32.h>

int main(void){
    // Configure Timer T3 (2 Hz with interrupts disabled)
    T3CONbits.TCKPS = 7; // 1:256 prescaler (i.e. fout_presc = 78125) k = fpbclk / (fout*(PRx+1)) k = 7
    PR3 = 39063; // Fout = 20MHz / (256 * (39063 + 1)) = 1,999 Hz
    TMR3 = 0; // Clear timer T2 count register
    T3CONbits.TON = 1; // Enable timer T3 (must be the last command of the
    // timer configuration sequence)
    while(1)
    {
        // Wait while T3IF = 0
        while(IFS0bits.T3IF != 1);
        // Reset T3IF
        IFS0bits.T3IF = 0;
        putChar('.');
    }
    return 0;
}