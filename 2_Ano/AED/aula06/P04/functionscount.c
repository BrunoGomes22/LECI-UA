//
// Tomás Oliveira e Silva, AED, October 2021
//
// the functions for the first exercise of class P.04
// (for a given positive value of n, find a formula for the return value of each function)
//

#include <stdio.h>
#include "elapsed_time.h"
#include <assert.h>

// TO COUNT ITERATIONS

unsigned int ITERATIONS_COUNTER;

int f1(int n)
{
  int i,r=0;

  for(i = 1;i <= n;i++){
    r += 1;
    ITERATIONS_COUNTER++;
  }
  return r;
}

int f2(int n)
{
  int i,j,r=0;

  for(i = 1;i <= n;i++){
    for(j = 1;j <= i;j++){
      r += 1;
      ITERATIONS_COUNTER++;
    }
  }
  return r;
}

int f3(int n)
{
  int i,j,r=0;

  for(i = 1;i <= n;i++){
    for(j = 1;j <= n;j++){
      r += 1;
      ITERATIONS_COUNTER++;
    }
  }
  return r;
}

int f4(int n)
{
  int i,r=0;

  for(i = 1;i <= n;i++){
    r += i;
    ITERATIONS_COUNTER++;
  }
  return r;
}

int f5(int n)
{
  int i,j,r=0;

  for(i = 1;i <= n;i++){
    for(j = i;j <= n;j++){
      r += 1;
      ITERATIONS_COUNTER++;
    }
  }
  return r;
}

int f6(int n)
{
  int i,j,r=0;

  for(i = 1;i <= n;i++){
    for(j = 1;j <= i;j++){
      r += j;
      ITERATIONS_COUNTER++;
    }
  }
  return r;
}

int main(void)
{
  printf("          f1(n)        f2(n)        f3(n)\n");
  double dt0,dt1,dt2,dt3,dt4,dt5,dt6;
  for(int n=1;n<=20;n++){
    
    f1(n);
    printf(ITERATIONS_COUNTER);
    f2(n);
    printf(ITERATIONS_COUNTER);
    f3(n);
    printf(ITERATIONS_COUNTER);
    
    
  }
  
  return 0;
}
