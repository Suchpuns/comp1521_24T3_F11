#include <stdio.h>
#include <stdlib.h>

int *get_num_ptr(void);

int main(void) {
    int *num = get_num_ptr();
    printf("%d\n", *num);
}

int *get_num_ptr(void) {
    int x = 42;
    int *y = malloc(sizeof(int));
    *y = 42;
    return y;
}