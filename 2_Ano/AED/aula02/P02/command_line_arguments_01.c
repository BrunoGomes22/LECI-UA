#include <errno.h>
#include<stdio.h>
#include<stdlib.h>

int main(int argc, char *argv[argc]){
    for(int i = 0;i < argc;i++){
        char *s, *e;
        long l;

        s = argv[i];

        errno = 0; //variável global vem do #include<errno.h>
        l = strtol(s, &e, 10);
        if(e == s || *e != '\0' || errno != 0){
            printf("argv[%2d] = \"%s\" integer value: %ld\n", i, argv[i], l);
        }
        else{
            printf("argv[%2d] = \"%s\" integer values: %ld\n",i, argv[i], l);
        }
        
    }
    return 0;
}