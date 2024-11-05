// remove public write from specified as command line arguments if needed

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

void chmod_if_needed(char *pathname);

int main(int argc, char *argv[]) {
    for (int arg = 1; arg < argc; arg++) {
        chmod_if_needed(argv[arg]);
    }
    return 0;
}

// chmod a file if publically-writeable
void chmod_if_needed(char *pathname) {
    struct stat s;
    stat(pathname, &s);

    if ((s.st_mode & S_IWOTH) == S_IWOTH) {
        printf("file is publically writeable, removing write permissions\n");
        mode_t new_mode = s.st_mode & ~S_IWOTH;
        chmod(pathname, new_mode);
    } else {
        printf("file is not publically writeable\n");
    }
}
