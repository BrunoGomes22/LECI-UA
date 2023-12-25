#include<stdio.h>

void swap1(int a, int b){
    int temp = a;
    a=b;
    b=temp;
    printf("%d %d\n",a,b);
}

void swap2(int* a,int* b){
    int temp = *a;
    *a=*b;
    *b = temp;
}

int main(void){
    int x = 1;
    int y = -1;
    swap2(&x,&y);
    printf("%d %d",x,y);
    return 0;
}

