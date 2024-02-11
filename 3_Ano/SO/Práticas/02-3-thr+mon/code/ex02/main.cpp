#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "thread.h" // aspas para procurar no diretorio atual

int sharedCounter;

void* thread_child(void* arg){
    int N2;
    printf("[thread_child] start\n");
    printf("Insert value [10,20]: " );
    scanf("%d", &N2);
    if(N2 < 10 || N2 > 20){
        printf("Invalid value\n");
        exit(1);
    }

    while (sharedCounter < N2)
    {
        sharedCounter++;
        printf("%d\n",sharedCounter);
    }

    printf("[thread_child] end\n");
    return NULL;
}

int main(){
    printf("[main] start\n");
    pthread_t thr;  //thread id
    int N1;

    printf("Insert value [1,9]: " );
    scanf("%d", &N1);
    if(N1 < 1 || N1 > 9){
        printf("Invalid value\n");
        exit(1);
    }

    sharedCounter = N1;

    thread_create(&thr, NULL, thread_child, NULL); // cria a thread child

    thread_join(thr, NULL); // bloqueia a thread associada ao main

    while(sharedCounter > 1){
        sharedCounter--;
        printf("%d\n",sharedCounter);
    }

    printf("[main] end\n");
    
    return 0;
}