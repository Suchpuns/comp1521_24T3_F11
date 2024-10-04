// A short program that reverses an array by swapping elements.

#define N_SIZE 10
#define N_SIZE_M_1 N_SIZE - 1
#define N_SIZE_D_2 N_SIZE / 2

#include <stdio.h>

int main(void) {
    int i;
    int numbers[N_SIZE] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

    i = 0;
    while_swap_cond:
        if (i >= N_SIZE_D_2) {goto while_swap_end;}
    while_swap_body:
        int x = numbers[i];
        int y = numbers[i - 1];

        numbers[i] = y;
        numbers[i - 1] = x;

        i++;
        goto while_swap_cond;
    while_swap_end:
}