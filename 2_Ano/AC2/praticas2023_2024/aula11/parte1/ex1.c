#include <detpic32.h>

int main(void)
{
    // Configure UART2: 115200,N,8,1
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

    // Configure UART2 interrupts, with RX interrupts enabled and TX interrupts disabled
    IEC1bits.U2RXIE = 1; // enable U2RXIE
    IEC1bits.U2TXIE = 0; // disable U2TXIE
    IPC8bits.U2IP = 1; // set UART2 priority level
    IFS1bits.U2RXIF = 0; // clear interrupt flag bit
    U2STAbits.URXISEL = 0b00; // define RX interrupt mode

    EnableInterrupts();

    while(1);
    return 0;
}