#include <stdio.h>
#include <stdlib.h>
#include <signal.h>

int main(int argc, char *argv[]){
    if(argc != 2){
        printf("Usage: %s <pid>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    pid_t pid = atoi(argv[1]);

    if(kill(pid, SIGINT) == -1){
        perror("kill");
        return -1;
    }
    else{
        printf("Process %d killed\n", pid);
        return 0;
    }

}
