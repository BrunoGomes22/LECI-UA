#include <detpic32.h>

void setup();
void send2displays(unsigned char value);
unsigned char toBCD(unsigned char value);
void delay(int ms);

volatile unsigned char voltage = 0; // Global variable

int main(void){
    setup();
    int cnt = 0;

    TRISB = TRISB & 0x80FF; // RB8-RB14 configured as output
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    EnableInterrupts();   //Global Interrupt Enable
    
    while(1)             // all activity is done by the ISR
    {
        if(cnt == 0){ // 20*10ms (5HZ)
            AD1CON1bits.ASAM = 1; // Start A/D conversion
        }

        send2displays((toBCD(voltage))); // Send "voltage" value to displays
        cnt = (cnt + 1) % 20; 
        delay(10); // Wait 10 ms
    }
    return 0;
}

// Interrupt Handler
void _int_(27) isr_adc(void)        //Replace VECTOR by the A/D vector
                                    // number - see "PIC32 family data
                                    // sheet" (pages 74-76)
{
    int i;
    int sum = 0;

    int *p = (int *)(&ADC1BUF0); // get adress of first buffer
    for(i = 0; i<8; i++){
        sum += (p[i*4]*33+511)/1023; // Calculate voltage amplitude
    }

    voltage = sum/8; // Convert voltage amplitude to decimal and store the result in the
                     //global variable "voltage"

    IFS1bits.AD1IF = 0;   // Reset AD1IF flag
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
    AD1CON2bits.SMPI = 8-1;     // Interrupt is generated after N samples
                                // (replace N by the desired number of
                                // consecutive samples)
    AD1CHSbits.CH0SA = 4;       // replace x by the desired input
                                // analog channel (0 to 15)
    AD1CON1bits.ON = 1;         // Enable A/D converter
                                // This must the last command of the A/D
                                // configuration sequence
    IPC6bits.AD1IP = 2;         // configure priority of A/D interrupts
    IFS1bits.AD1IF = 0;         // clear A/D interrupt flag
    IEC1bits.AD1IE = 1;         // enable A/D interrupts
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

void delay(int ms)
{
    resetCoreTimer();
    int timer = readCoreTimer();
    while(timer < ms * 20000){
        timer = readCoreTimer();
    }
} 