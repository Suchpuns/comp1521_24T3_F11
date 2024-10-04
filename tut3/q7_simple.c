// A simple program that adds 42 to each element of an array

#define N_SIZE 10

int main(void) {
    int i;
    int numbers[N_SIZE] = {0, 1, 2, -3, 4, -5, 6, -7, 8, 9};

    i = 0;
    while_numbers_cond:
        if (i >= N_SIZE) {goto while_numbers_end;}
    while_numbers_body:

        if (numbers[i] >=0) {goto numbers_i_lt_0_false;}
    numbers_i_lt_0_true:
        numbers[i] += 42;
    numbers_i_lt_0_false:
        i++;
        goto    while_numbers_cond;
    while_numbers_end:
}