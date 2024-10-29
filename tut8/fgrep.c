#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#define MAX_LINE 65536


int main(int argc, char** argv) {
    if (argc != 3) {
        perror("invalid arguments");
        exit(1);
    }

    FILE *f = fopen(argv[2], "r");
    char line[MAX_LINE];
    int count = 0;
    while (fgets(line, MAX_LINE, f) != NULL) {
        if (strstr(line, argv[1]) != NULL) {
            printf("%d: %s\n", count, line);
        }
        count++;
    }
    return 0;
}
