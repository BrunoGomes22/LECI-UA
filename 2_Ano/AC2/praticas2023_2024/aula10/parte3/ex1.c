#include <detpic32.h>

void putc(char byte);
void putstr(char *str);

int main(void){
    TRISDbits.TRISD11 = 0; // RD11 configured as output

    // Configure UART2: (115200, N, 8, 1)
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
        while(U2STAbits.TRMT == 0); // esperar enquanto o TX FIFO esta cheio
        LATDbits.LATD11 = 1;        // Set RD11
        putstr("12345");
        LATDbits.LATD11 = 0;        // reset RD11
        printStr("\n");
    }
    return 0;
}

void putc(char byte)
{
    while(U2STAbits.UTXBF == 1); // wait while UTXBF == 1
    U2TXREG = byte;              // Copy "byte" to the U2TXREG register
}

void putstr(char *str){
    int i = 0;
    while(str[i] != '\0')
    {
        putc(str[i++]);
    }
}