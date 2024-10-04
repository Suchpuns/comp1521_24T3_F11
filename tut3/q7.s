# $t0: i
# $t1: &numbers[i]
# $t2: numbers[i]
N_SIZE = 10
main:
	li	$t0, 0
while_numbers_cond:
	bge	$t0, N_SIZE, while_numbers_end
while_numbers_body:

numbers_i_lt_0_true:

numbers_i_lt_0_false:
	addi	$t0, 1
	b	while_numbers_cond
while_numbers_end:
	li	$v0, 0
	jr	$ra


	.data
numbers:
        .word 0, 1, 2, -3, 4, -5, 6, -7, 8, 9