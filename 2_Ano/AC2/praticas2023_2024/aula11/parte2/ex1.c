#include <detpic32.h>
#include </home/brunogomes/AC2/estudo_ep_especial/aula11/parte2/buffer.h>

void putstrInt(char *s);

volatile t_buf txbuf;

int main(void){
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

    // Configure UART2 interrupts, with RX interrupts disable and TX interrupts disabled
    IEC1bits.U2RXIE = 0; // enable U2RXIE
    IEC1bits.U2TXIE = 0; // disable U2TXIE
    IPC8bits.U2IP = 1; // set UART2 priority level
    IFS1bits.U2RXIF = 0; // clear interrupt flag bit
    U2STAbits.URXISEL = 0b00; // define RX interrupt mode

    EnableInterrupts();

    txbuf.nchar = 0;

    while(1)
    {
        putstrInt("Test string which can be as long as you like, up to a maximum of 100 characters\n");  
    }
    return 0;
}

void putstrInt(char *s)
{   
    int i = 0;
    while(txbuf.nchar > 0); // wait while the buffer is not empty

    while(s[i] != '\0'){
        txbuf.mem[i] = s[i++];
        txbuf.nchar++;
    }
    txbuf.posrd = 0;  // Initialize "posrd" variable with 0
    IEC1bits.U2TXIE = 1;  // Enable UART2 Tx interrupts
}

void _int_(32) isr_uart2(void) // 32 is the vector number of UART2
{
    if(IFS1bits.U2TXIF = 1){ // UART2 Tx interrupt flag is set

        if(txbuf.nchar > 0){
            U2TXREG = txbuf.mem[txbuf.posrd]; // Read 1 character from the buffer and send it
            txbuf.posrd++;
            txbuf.nchar--;
        }
        else{
            IEC1bits.U2TXIE = 0;  // Disable UART2 Tx interrupts
        }
        IFS1bits.U2TXIF = 0; // Clear UART2 Tx interrupt flag
    }
}