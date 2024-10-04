N_SIZE = 10
N_SIZE_M_1 = N_SIZE - 1
N_SIZE_D_2 = N_SIZE / 2
# $t0: i
# $t1: x
# $t2: y
main:
	li	$t0, 0
while_swap_cond:
	bge	$t0, N_SIZE_D_2, while_swap_end
while_swap_body:

while_swap_end:
	li	$v0, 0
	jr	$ra


	.data
numbers:
        .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9