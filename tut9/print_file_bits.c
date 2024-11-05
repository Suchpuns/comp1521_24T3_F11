// read 32-byte hexadecimal numbers from a file
// and print low (least significant) byte
// as a signed decimal number (-128..127)

#include <stdio.h>
#include <stdint.h>

#define MAX_LINE 5

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "invalid number of arguments\n");
    }

    FILE *f = fopen(argv[1], "r");
    uint32_t num;

    while (fscanf(f, "%x ", &num) == 1) {
        int8_t least_sig_byte = num & 0b11111111;
        printf("%d\n", least_sig_byte);
    }
    return 0;
}
