#include <stdio.h>

int main(void) {
    int x;

    if (x > 100 || x < 1000) {
        printf("medium\n");
    } else {
        printf("small/big\n");
    }

}