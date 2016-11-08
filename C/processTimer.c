#include <stdio.h>
#include <unistd.h>

int main(int argc, char *argv[])
{

    int childpid;
    int count1 = 0, count2 = 0;
    int result = 0;

    printf("Before it forks!\n");

    result = 15;

    childpid = fork();

    if (childpid == 0)
    {
        printf("This is a child process\n");
        result++;
        printf("%d\n", result);
    } else {
        printf("This is the parent process\n");
        result = 5 - 3;
        printf("%d\n",result);
    }

return 0;

}