#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

struct Inputs {
    int a[50];
    int b[50];
    int c[50];
    int d[50];
    char p0[100];
    char p1[100;
    char p2[100];
    char p3[100];
    char p4[100];
    char p5[100];
}

int main(int argc, char *argv[]) {

   int fd;
   char buf[255];
   struct Inputs variables;

   /*read*/
   fd = open("code2.txt", O_RDONLY);

   if(fd == -1){
       printf("Failed to open and read the file.\n");
       exit(1);
   }

   read(fd, buf, 255);
   buf[255] = '\0';
   close(fd);

   printf("%s\n", buf);
   return 0;

}
