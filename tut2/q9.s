# $t0: n
# $t1: fac
# $t2: i
main:
	li	$v0, 4
	la	$a0, enter_n
	syscall

	li	$v0, 5
	syscall
	move	$t0, $v0

	li	$t1, 1
for_i_init:
	li	$t2, 1
for_i_cond:
	bgt	$t2, $t0, for_i_end

for_i_body:
	mul	$t1, $t1, $t2
for_i_step:
	add	$t2, $t2, 1
	b	for_i_cond
for_i_end:

	li	$v0, 4
	la	$a0, result_n
	syscall

	li	$v0, 1
	move	$a0, $t1
	syscall

	li	$v0, 11
	li	$a0, '\n'
	syscall

	li	$v0, 0
	jr	$ra


	.data
enter_n:
	.asciiz	"n  = "

result_n:
	.asciiz "n! = "