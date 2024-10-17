#include <stdio.h>
#include <stdint.h>
typedef uint32_t Word;

void print_binary(Word device) {
    uint32_t mask = 1u << 31;
    for (int i = 0; i < 32; ++i) {
        if ((mask & device) == mask) {
            printf("1");
        } else {
            printf("0");
        }
        mask >>= 1;
    }
    printf("\n");
}

// Reverse order of bits of a given number
Word reverseBits(Word w) {
    uint32_t read_mask = (uint32_t) 1 << 31;
    uint32_t set_mask = 1;
    uint32_t res = 0;
    for (int i = 0; i < 32; ++i) {
        if ((w & read_mask) == read_mask) {
            res |= set_mask;
        }
        read_mask >>= 1;
        set_mask <<= 1;
    }
    return res;
}


int main(void) {
    print_binary(0x01234567);
    Word x = reverseBits(0x01234567);
    print_binary(x);
    // expect 0xe6a2c480
    printf("0x%x\n", x);
    return 0;
}