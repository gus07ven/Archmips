#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include <math.h>

int main()
{

    int tuna = 19;
    int *pTuna = &tuna;

    printf("Addres \t Name\t Value\n");
    printf("%p \t %s \t %d \n", pTuna, "tuna", tuna);
    printf("%p \t %s \t %p \n", &pTuna, "pTuna", pTuna);

    // Dereference a pointer
    printf("*pTuna = %d", *pTuna);
    *pTuna = 71;
    printf("*pTuna = %d", *pTuna);

    return 0;
}