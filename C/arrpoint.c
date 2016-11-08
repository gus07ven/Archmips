#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include <math.h>

int main(){

    int i;
    int meatBalls[5] = {7,9,43,21,3};
    
    for(i=0; i<5; i++){
        printf("meatBalls[%d] \t %p \t %d\n",i,&meatBalls[i],meatBalls[i]);
    }

    //Array names are just pointers to the first element
    printf("\n meatBalls \t \t %p \n", meatBalls);

    //Dereference it 
    printf("\n *meatBalls \t \t %d \n",*meatBalls);
    printf("\n *(meatBalls+2) \t \t %d \n",*meatBalls+2);

    return 0;
}