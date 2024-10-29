#include <stdio.h>
#include <stdlib.h>
#define MAX_LINE 65536


int main(int argc, char **argv) {
    char line[MAX_LINE];
    fgets(line, MAX_LINE, stdin);

    FILE *f = fopen(argv[1], "w");
    if (f == NULL) {
        perror("error");
        exit(1);
    }
    fputs(line, f);
    return 0;
}
