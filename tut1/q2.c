#include <stdio.h>

char *s1 = "abc";
    char *s2 = "def";
void a(void);

int main(void) {
    a();
}

void a(void) {
    printf("%s\n", s2);
}
