#include <detpic32.h>

void putc1(char byte);
void delay(int ms);

int main(void)
{
    // Configure UART1 (115200, E, 8, 1)
    // 1 - Configure BaudRate Generator
    U2BRG = 10;
    U2MODEbits.BRGH = 0; // fator divisao 16
    // 2 - Configure number of data bits, parity and number of stop bits
    U2MODEbits.PDSEL = 0b01; // 8 bit data, even parity
    U2MODEbits.STSEL = 0;    // 1 stop bit
    // 3 - Enable the transmitter and receiver modules
    U2STAbits.UTXEN = 1; // enable transmitter
    U2STAbits.URXEN = 1; // enable receiver
    // 4 - Enable UART2
    U2MODEbits.ON = 1;

    while(1)
    {
        putc1(0xA5);
        delay(10);
    }
    return 0;
}

void putc1(char byte)
{
    while(U1STAbits.UTXBF == 1); // wait while UTXBF == 1
    U1TXREG = byte;              // Copy "byte" to the U1TXREG register
}

void delay(int ms)
{
    resetCoreTimer();
    int timer = readCoreTimer();
    while(timer < ms * 20000){
        timer = readCoreTimer();
    }
}