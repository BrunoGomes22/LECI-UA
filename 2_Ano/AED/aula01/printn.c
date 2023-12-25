#include <math.h>
#include <stdio.h>

void do_it(int N){
    int i;
    FILE *fp = fopen("table.txt", "w"); // "w" para escrever;
    fprintf(fp, "n sin(n) cos(n)\n");
    fprintf(fp, "-- --- -----\n");
    for(int i = 1;i <= N;i++){
        fprintf(fp, "%2d %3.0f %3.0f\n",i,sin(i*(M_PI / 180.0)),cos(i*(M_PI / 180.0)));
    }
    fclose(fp);
}



int main(void){
    do_it(90);
    return 0;
}