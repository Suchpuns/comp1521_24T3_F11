#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main(void) {
    FILE *fd = fopen("lseek.txt", "r");
    lseek(fileno(fd), 3, SEEK_END);
    char c = fgetc(fd);
    printf("got: %d\n", c);
}
