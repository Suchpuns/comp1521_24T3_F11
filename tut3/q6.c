// A simple program that will print 10 numbers from an array

#define COL_SIZE 3
#define ROW_SIZE 3

#include <stdio.h>

int main(void) {
    int i;
    int j;
    int numbers[ROW_SIZE][COL_SIZE] = {{0, 1, 2}, {0, 1, 2}, {0, 1, 2}};

    i = 0;
    while (i < N_SIZE) {
        j = 0;
        while (j < N_SIZE) {
            printf("%d ", numbers[i][j]);
            j++;
        }
        printf("\n");
        i++;
    }
}

struct stuff {
    int number;
    char letter;
}