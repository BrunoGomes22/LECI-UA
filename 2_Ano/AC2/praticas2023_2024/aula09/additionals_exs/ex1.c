#include <detpic32.h>

void configureAll();
void send2displays(unsigned char value);
unsigned char toBCD(unsigned char value);

volatile int voltage = 0; // Global variable

int main(void){
    configureAll();  // Function to configure all (digital I/O, analog
                     // input, A/D module, timers T1 and T3, interrupts)

    // Reset AD1IF, T1IF and T3IF flags
    IFS1bits.AD1IF = 0; // clear A/D interrupt flag
    IFS0bits.T1IF = 0; // Reset timer T1 interrupt flag
    IFS0bits.T3IF = 0; // Reset timer T3 interrupt flag

    EnableInterrupts(); //Global interrupt enable
    while(1);
    return 0;
}

void configureAll(){
    TRISB = TRISB & 0x80FF; // RB8-RB14 configured as output
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    TRISB = (TRISB & 0xFFFC) | 0x0003; // RBO and RB1 configured as input

    // A/D Module
    TRISBbits.TRISB4 = 1;       // RBx digital output disconnected
    AD1PCFGbits.PCFG4= 0;       // RBx configured as analog input
    AD1CON1bits.SSRC = 7;       // Conversion trigger selection bits: in this
                                // mode an internal counter ends sampling and
                                // starts conversion
    AD1CON1bits.CLRASAM = 1;    // Stop conversions when the 1st A/D converter
                                // interrupt is generated. At the same time,
                                // hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16;      // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 8-1;     // Interrupt is generated after N samples
                                // (replace N by the desired number of
                                // consecutive samples)
    AD1CHSbits.CH0SA = 4;       // replace x by the desired input
                                // analog channel (0 to 15)
    AD1CON1bits.ON = 1;         // Enable A/D converter
                                // This must the last command of the A/D
                                // configuration sequence

    //Timer 1 Configuration
    T1CONbits.TCKPS = 2;    // 1:64 prescaler 
    PR1 = 62499;            
    TMR1 = 0;               // Clear timer T1 count register
    T1CONbits.TON = 1;      // Enable timer T1 (must be the last command of the
                            // timer configuration sequence)

    //Timer 3 Configuration
    T3CONbits.TCKPS = 2;    // 1:4 prescaler 
    PR3 = 49999;            
    TMR3 = 0;               // Clear timer T3 count register
    T3CONbits.TON = 1;      // Enable timer T3 (must be the last command of the
                            // timer configuration sequence)

    //Interrupts
    // Timer 1 interruptions
    IPC1bits.T1IP = 2; // Interrupt priority (must be in range [1..6])
    IEC0bits.T1IE = 1; // Enable timer T1 interrupts

    // Timer 3 interruptions
    IPC3bits.T3IP = 2; // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1; // Enable timer T3 interrupts

    // A/D interruptions
    IPC6bits.AD1IP = 2; // configure priority of A/D interrupts
    
}

void send2displays(unsigned char value)
{
    static const char disp7Scodes[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
    static char displayFlag = 0;

    if(displayFlag == 0){
        //select display low
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        // send digit_low (dl) to display: dl = value & 0x0F
        LATB = (LATB & 0x80FF) | (disp7Scodes[value & 0x0F] << 8);
    }
    else{
        //select display high
        LATDbits.LATD6 = 1;
        LATDbits.LATD5 = 0;
        //send digit_high (dh) to display: dh = value >> 4
        LATB = (LATB & 0x80FF) | (disp7Scodes[value >> 4] << 8);
    }

    displayFlag = !displayFlag; //toggle displayFlag
    
}

unsigned char toBCD(unsigned char value){
    return ((value/10) << 4) + (value %10);
}

void _int_(4) isr_T1(void) // 4 is the vector number of T1
{  
    short unsigned int value = PORTB & 0x0003;

    if(value == 0x0001){
        IEC1bits.AD1IE = 0; // disable A/D interrupts
    }
    else{
        IEC1bits.AD1IE = 1; // enable A/D interrupts
    }
    

    AD1CON1bits.ASAM = 1; //Start A/D conversion
 
    
    IFS0bits.T1IF = 0;  // Reset T1IF Flag
}

void _int_(12) isr_T3(void) // 12 is the vector number of T3
{
    send2displays(toBCD(voltage));  // Send the value of the global variable "voltage" to the displays
                                    // using BCD (decimal) format
    IFS0bits.T3IF = 0;               // Reset timer T3 interrupt flag
}

void _int_(27) isr_adc(void)
{
    int *p = (int *)(&ADC1BUF0);

    int i = 0;
    voltage = 0;

    for(i = 0; i<8; i++){ // só queremos ver apenas as 8 primeiras amostras
        voltage+= (p[i*4]*33+511)/1023;
    }

    voltage = voltage/8;

    IFS1bits.AD1IF = 0; // Reset AD1IF flag
}

