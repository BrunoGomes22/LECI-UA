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


    printf("[thread_child] end\n");
    return NULL;
}

int main(){
    printf("[main] start\n");
    pthread_t thr1;  //thread id
    pthread_t thr2;
    int N1;

    printf("Insert value [10,20]: " ); //pedir ao user uma valor entre 10 e 20
    scanf("%d", &N1);
    if(N1 < 10 || N1 > 20){
        printf("Invalid value\n");
        exit(1);
    }

    sharedCounter = N1; // atribuir o valor inserido pelo user a variavel global

    thread_create(&thr1, NULL, thread_child, NULL); // cria a thread child
    thread_create(&thr2, NULL, thread_child, NULL);

    thread_join(thr1, NULL); // bloqueia a thread associada ao main

    
    printf("[main] end\n");
    
    return 0;
}