#include <detpic32.h>

char getc(void);
void putc(char byte);

int main(void)
{
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
        putc(getc());// Read character using getc() and send character using putc()
    }
    return 0;
}

char getc(void)
{
    while(U2STAbits.URXDA == 0); // Wait while URXDA == 0
    return U2RXREG; // Return U2RXREG
}

void putc(char byte)
{
    while(U2STAbits.UTXBF == 1); // wait while UTXBF == 1
    U2TXREG = byte;              // Copy "byte" to the U2TXREG register
}