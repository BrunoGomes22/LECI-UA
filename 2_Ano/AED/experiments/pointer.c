#include <stdio.h>

int main(){
    int a = 10;
    int *p;
    p = &a;
    printf("O valor de p é %d\n",*p);
    printf("Memory adress é %x\n", p);
    return 0;
}