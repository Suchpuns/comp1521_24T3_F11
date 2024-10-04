#include <stdio.h>
int fib(int n);

int main(void) {
    int x = fib(10);
    printf("%d\n", x);
    return 0;
}

int fib(int n) {
    if (n == 1) {
        return 1;
    }
    if (n == 2) {
        return 1;
    }
    return fib(n -1) + fib(n-2);
}
