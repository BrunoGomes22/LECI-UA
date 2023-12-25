#include<stdio.h>

void printArray(char* s, int* a,int n){
    printf("%s:", s);
    for(int i = 0; i<n; i++){
        printf("%d ", a[i]);
    }
    printf("\n");
}

void cumSum(int* a,int* b,int n){ //int* array
    int c = 0;
    for(int i = 0;i<n;i++){
        c += a[i];
        b[i] = c;
    }
}

int main(void){
    int size = 5;
    int a[5] = {1,2,3,4,5};
    printArray("a",a,size);
    int b[5];
    cumSum(a,b,size);
    printArray("b",b,size);
    return 0;
}