#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#include "delays.h"
#include "process.h"

int main(void)
{
  printf("Before the fork:\n");
  printf("  PID = %d, PPID = %d\n", getpid(), getppid());

  pfork(); // equivalent to fork(), dealing internally with error situations

  int current_pid = getpid();
  int parent_id = getppid();
  
  printf("After the fork:\n");
  printf("  PID = %d, PPID = %d\n",getpid(), getppid());
  bwRandomDelay(0, 100000);

  if (current_pid == getpid()) // parent process
    printf("  I am the parent process\n");
  else if (parent_id == getpid()) // child process
    printf("  I am the child process\n");
  else
    printf("  I am neither the parent nor the child process\n");

  printf("  Was I printed by the parent or by the child process? How can I know it?\n"); 
  
  return EXIT_SUCCESS;
}

