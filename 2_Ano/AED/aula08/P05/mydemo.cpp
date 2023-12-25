
#include <iostream>
#include "lQueue.h"


int main(void){
    lQueue <int> fila_de_inteiros;
    
    int num1, num2, num3;
    std :: cin >> num1;
    fila_de_inteiros.enqueue(num1); 
    std :: cin >> num2;
    fila_de_inteiros.enqueue(num2); 
    std :: cin >> num3;
    fila_de_inteiros.enqueue(num3);
    fila_de_inteiros.dequeue();

    lQueue <char> fila_de_char;
    char char1, char2, char3;
    std :: cin >> char1;
    fila_de_char.enqueue(char1); 
    std :: cin >> char2;
    fila_de_char.enqueue(char2); 
    std :: cin >> char3;
    fila_de_char.enqueue(char3);
    fila_de_char.dequeue();

    std :: cout << fila_de_inteiros.size() << std :: endl;
    std :: cout << fila_de_char.size() << std :: endl;
    return 0;
}