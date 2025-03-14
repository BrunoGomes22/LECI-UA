#include <detpic32.h>

void setup();

int main(void){
    setup(); // Configure the A/D module and port RB4 as analog input
    int i;
    int v;
    while(1)
    {
        AD1CON1bits.ASAM = 1; // Start conversion
        while (IFS1bits.AD1IF == 0); // Wait while conversion not done (A1IF == 0)
        int *p = (int *)(&ADC1BUF0);

        v = 0; //voltage

        for(i = 0; i<4; i++){ // só queremos ver apenas as 4 prmeiras amostras
            v+= (p[i*4]*33+511)/1023;
        }
        printInt(v/4, 10 | 2 << 16); // valores impressos em decimal formatados com 2 digitos (v/4) -> calculo da media
        putChar('\r');
        IFS1bits.AD1IF = 0; // Reset AD1IF
    }
    return 0;
}

void setup(){
    TRISBbits.TRISB4 = 1;       // RBx digital output disconnected
    AD1PCFGbits.PCFG4= 0;       // RBx configured as analog input
    AD1CON1bits.SSRC = 7;       // Conversion trigger selection bits: in this
                                // mode an internal counter ends sampling and
                                // starts conversion
    AD1CON1bits.CLRASAM = 1;    // Stop conversions when the 1st A/D converter
                                // interrupt is generated. At the same time,
                                // hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16;      // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 4-1;     // Interrupt is generated after N samples
                                // (replace N by the desired number of
                                // consecutive samples)
    AD1CHSbits.CH0SA = 4;       // replace x by the desired input
                                // analog channel (0 to 15)
    AD1CON1bits.ON = 1;         // Enable A/D converter
                                // This must the last command of the A/D
                                // configuration sequence
}