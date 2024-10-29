#include <errno.h>
#include <string.h>
#include <stdio.h>
#include <err.h>
#include <error.h>

int main(void) {

    // using strerror (needs errno.h)
    // errno = ENOENT;
    // char *error_string = strerror(errno);
    // fprintf(stderr, "%s\n", error_string);

    // using perror (needs stdio.h) <--- THE STANDARD
    // errno = EINVAL;
    fopen("example.txt", "hfewoghewoigh");
    perror("hi");           // prints "No such file or directory"

    // using warn (needs err.h)
    errno = ENOENT;
    warn(NULL);             // prints "<progname>: No such file or directory"
    
    // using err (needs err.h)
    errno = ENOENT;
    err(1, NULL);           // prints "<progname>: No such file or directory"
                            // and terminates the program with exit code 1.
    
    // using error (needs error.h)
    error(1, ENOENT, NULL); // prints "<progname>: No such file or directory"
                            // and terminates the program with exit code 1.
}
