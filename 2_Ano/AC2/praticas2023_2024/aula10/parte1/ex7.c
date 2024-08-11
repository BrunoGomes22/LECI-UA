#include <detpic32.h>

void putc(char byte);
void delay(int ms);

int main(void)
{   
    unsigned char counter = 0;
    // Configure UART2 (115200, N, 8, 1)
    // 1 - Configure BaudRate Generator
    U2BRG = 10;
    U2MODEbits.BRGH = 0; // fator divisao 16
    // 2 - Configure number of data bits, parity and number of stop bits
    U2MODEbits.PDSEL = 0b00; // 8 bit data, no parity
    U2MODEbits.STSEL = 0;    // 1 stop bit
    // 3 - Enable the transmitter and receiver modules
    U2STAbits.UTXEN = 1; // enable transmitter
    U2STAbits.URXEN = 1; // enable receiver
    // 4 - Enable UART2
    U2MODEbits.ON = 1;
    while(1)
    {   
        putc(' ' + (counter % 95)); // ' ' (space) is ASCII 32, '~' is ASCII 126, so there are 95 printable characters
        delay(200); // 200ms 5hz
        putc('\n'); 
        counter++;

    }
    return 0;
}

void putc(char byte)
{
    while(U2STAbits.UTXBF == 1); // wait while UTXBF == 1
    U2TXREG = byte;              // Copy "byte" to the U2TXREG register
}

void delay(int ms)
{
    resetCoreTimer();
    int timer = readCoreTimer();
    while(timer < ms * 20000){
        timer = readCoreTimer();
    }
}