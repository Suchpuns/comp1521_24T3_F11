// A simple program that will read 10 numbers into an array
// Also prints out the array
#define N_SIZE 10

#include <stdio.h>
int numbers[N_SIZE] = {0};

int main(void) {
    int i;

    i = 0;
    while_scan_cond:
        if (i >= N_SIZE) {goto while_scan_end;}

    while_scan_body:
        scanf("%d", &numbers[i]);
        i++;
        goto while_scan_cond;
    while_scan_end:
    
    i = 0;
    while_print_cond:
        if (i >= N_SIZE) {goto while_print_end;}

    while_print_body:
        printf("%d\n", numbers[i]);
        i++;
        goto while_print_cond;
    while_print_end:

}