#include <detpic32.h>
#include </home/brunogomes/AC2/estudo_ep_especial/aula11/parte2/buffer.h>

volatile t_buf txbuf;

int main(void){

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