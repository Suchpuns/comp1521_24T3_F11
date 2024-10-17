#include <stdio.h>
#include <stdint.h>

#define READING   0x01 // 0b 0000 0001
#define WRITING   0x02 // 0b 0000 0010
#define AS_BYTES  0x04 // 0b 0000 0100
#define AS_BLOCKS 0x08 // 0b 0000 1000
#define LOCKED    0x10 // 0b 0001 0000

void print_binary(unsigned char device) {
    uint8_t mask = 0b10000000;
    for (int i = 0; i < 8; ++i) {
        if ((mask & device) == mask) {
            printf("1");
        } else {
            printf("0");
        }
        mask >>= 1;
    }
    printf("\n");
}

void mark_reading(unsigned char *device) {
    *device |= READING;
}

void mark_writing(unsigned char *device) {
    *device |= WRITING;
}

void lock_device(unsigned char *device) {
    *device |= LOCKED;
}

void unlock_device(unsigned char *device) {
    *device = *device & ~LOCKED;
}

void switch_to_write(unsigned char *device) {
    *device |= WRITING;
    *device &= ~READING;
}

void swap_read_write(unsigned char *device) {
    *device = *device ^ (READING | WRITING);
}

int main (void) {
    unsigned char device = 0b01011001;
    swap_read_write(&device);
    print_binary(device);
}