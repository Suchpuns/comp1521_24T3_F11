#include <stdint.h>
#include <stdio.h>

int main(void) {
  uint16_t a = 0x5555, b = 0xAAAA, c = 0x0001;
  // a = 0b0101010101010101
  // b = 0b1010101010101010
  // c = 0b0000000000000001

  uint16_t res = c;
  res = res << 3;

  printf("0x%x\n", res);
  return 0;
}