#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main (int argc, char *argv[])
{
	int pid;
	pid = fork();
	fork();
	fork();
	fork();
	printf("Hello\n");
	
	if (pid == -1){
	  perror("bad fork");
	  exit(0);
	}
	if (pid == 0){
	  printf("I am the child process\n");
	}
	else {
	  printf("I am the parent process\n");
	 }
        
	return 0;
}
