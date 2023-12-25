/*
// Tomás Oliveira e Silva, AED, October 2021
**
** my first C++ program (compare with hello.c)
*/

#include <iostream>
#include <stdio.h>
using namespace std;

int main(void)
{
  
  std::cout << "Hello world!\n"; // "same" as printf("Hello world\n"); cout = console output
  printf("Hello World! \n");
  
  int n = 0;

  std::cout << "Enter an integer value? ";

  std::cin >> n;

  for(int i = 1; i<=n; ++i){
    std::cout << i << std::endl;
  }
  
  //  return 0;  // main() returns 0 if no return value is given
}
