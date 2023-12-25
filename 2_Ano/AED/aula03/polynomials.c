#include <assert.h>
#include <math.h>
#include <stdio.h>

void displayPol(double* coef, unsigned int degree){
    printf("Pol(x) = ");
    for(int i = 0; i< degree;i++){ //size_t é uma maneira simplificada de mostrar um determinado tipo...
        printf("%f * x^%d + ", coef[i], degree-i);
    }
    printf("%f\n", coef[degree]);
}

double computePol(double* coef, unsigned int degree, double x){
    double result = coef[0];

    for(size_t i = 1; i<=degree;i++){
        result = result * x + coef[i];
    }

    return result;
}

unsigned int getRealRoots(double* coef, unsigned int degree, double* root1, double* root2){

    assert(degree == 2);
    assert(coef[0] != 0.0);

    double delta = coef[1]*coef[1]-4.0*coef[0]*coef[2]; //b^2 - 4*a*c 

    if(delta < 0.0){
        //No rel roots !!
        //Overwriting
        *root1 = *root2 = 0.0;
        return = 0;
    }

    if(delta == 0.0){
        //1 root with multiplicity 2
        *root1 = *root2 = -coef[1] / (2.0 * coef[0]);
        return 1;
    }

    double aux = sqrt(delta);
    *root1 = (-coef[1] + aux) / (2.0 * coef[0])
    *root2 = (-coef[1] - aux) / (2.0 * coef[0])
    return 2;
}


int main(void){
    double coef[3];
    coef[0] = 10;
    coef[1] = 99;
    coef[2] = 5;
    displayPol(coef,2);
    double p = computePol(coef,2,10);
    printf("%f\n",p);
    ...

    return 0;
}