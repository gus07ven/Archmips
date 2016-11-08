#include <stdio.h>
#include <unistd.h>
#include <semaphore.h>

// input_var a,bb,c,d;
// 	internal_var p0,p1,p2,p3;
// 	read(a,bb,c,d);
// 	cobegin
// 		p0 = a - bb;
// 		p1 = c + d;
// 		p2 = a - d;
// 	coend;
// 	p3 = p0 + p1 + p2;
// 	write(a,bb,c,d,p0,p1,p2,p3);

int main(int argc, char *argv[])
{

    int childpid;
    int a = 3;
    int b = 2;
    int c = 4;
    int d = 11;
    int p0 = 0;
    int p1 = 0;
    int p2 = 0;
    int p3 = 0;
    int result = 0;

    
    p0 = a - b; // 1
    p1 = c + d; // 15
    p2 = a - d; // -8
    p3 = p0 + p1 + p2; // 1 + 15 + 8

    printf("%d, %d, %d, %d\n", p0, p1, p2, p3);

    return 0;
}