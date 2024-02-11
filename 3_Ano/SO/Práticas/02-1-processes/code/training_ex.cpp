#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "delays.h"
#include "process.h"

int main (void){
    
    printf("Before the fork: PID = %d, PPID = %d\n", getpid(), getppid());

    pid_t ret = fork();
    if (ret == 0)  // processo filho
    {
        printf("I'm the child: PID = %d, PPID = %d\n", getpid(), getppid());
        for(int i = 1; i<=10;i++){
            printf("%d\n",i);
        }
    }
    else       // processo pai
    {
        while(wait(NULL) > 0);  //espera que todos os processos filho acabem
        printf("I'm the parent: PID = %d, PPID = %d\n", getpid(), getppid());

        for(int i = 11; i<=20;i++){
            printf("%d\n",i);
        }
    }

    return EXIT_SUCCESS;
    
}