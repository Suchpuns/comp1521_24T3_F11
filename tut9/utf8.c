#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

void print_byte_binary(char c) {
    unsigned char mask = 0x80;
    for (int i = 0; i < 8; i++) {
        if ((c & mask) == mask) {
            printf("1");
        } else {
            printf("0");
        }
        mask >>= 1;
    }
}

// print the binary for a single utf8 character
void utf8_print_binary(char *string) {
    int size = 0;
    char header = string[0];
    if ((header & 0b10000000) == 0) {
        size = 1;
    } else if ((header & 0b11100000) == 0b11000000) {
        size = 2;
    } else if ((header & 0b11110000) == 0b11100000) {
        size = 3;
    } else if ((header & 0b11111000) == 0b11110000) {
        size = 4;
    } else {
        fprintf(stderr, "invalid header\n");
        return;
    }

    for (int i = 0; i < size; i++) {
        print_byte_binary(string[i]);
        printf(" ");
    }
    printf("\n");
}



int main(void) {
    // printf("ο Δικαιοπολις εν αγρω εστιν\n");
    char *utf8_char = "ρ";
    utf8_print_binary(utf8_char);

}
