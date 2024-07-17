#include <detpic32.h>

int main(void)
{
    TRISE = TRISE & 0xFF87; // configurar portos RE6-RE3 como saidas
    int counter = 9;
    while(1){
        LATE = (LATE & 0xFF87) | counter << 3;
        resetCoreTimer();
        while(readCoreTimer() < 7407407); // (1/2.7) * 20 000 000
        counter = (counter + 9) % 10;
    }
}