// print $HOME/.diary to stdout

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
    char *home_pathname = getenv("HOME");
    int size = strlen(home_pathname) + strlen("/.diary") + 1;
    char diary_pathname[10000];
    snprintf(diary_pathname, size, "%s/.diary", home_pathname);

    FILE *f = fopen(diary_pathname, "r");
    char line[10000];
    while (fgets(line, 10000, f) != NULL) {
        printf("%s", line);
    }
    return 0;
}
