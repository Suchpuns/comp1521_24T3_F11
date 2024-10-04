# $t0: i
# $t1: j
main:

for_i_init:
	li	$t0, 1			# int i = 1

for_i_cond:
	bgt	$t0, 10, for_i_end	# for (int i = 1; i <= 10; i++)

for_i_body:

for_j_init:
	li	$t1, 0			# int j = 0

for_j_cond:				# for (int j = 0; j < i; j++) {
	bge	$t1, $t0, for_j_end

for_j_body:				#
	li	$v0, 11
	li	$a0, '*'
	syscall				# printf("*");

for_j_step:
	b	for_j_cond		# j++

for_j_end:
	li	$v0, 11
	li	$a0, '\n'
	syscall

for_i_step:
	add	$t0, $t0, 1
	b	for_i_cond

for_i_end:

	li	$v0, 0
	jr	$ra