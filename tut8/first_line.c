#include <stdio.h>
#include <stdlib.h>
#define MAX_LINE 65536


int main(int argc, char **argv) {
    FILE *f = fopen(argv[1], "r");
    if (f == NULL) {
        perror("can't open file");
        exit(1);
    }
    char line[MAX_LINE];
    fgets(line, MAX_LINE, f);
    printf("%s", line);
    return 0;
}
