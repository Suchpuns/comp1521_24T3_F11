# Prints the square of the number
# $t0 : x
# $t1 : y
main:

	li	$v0, 4 # $v0 = 4
	la	$a0, enter_a_number
	syscall

	li	$v0, 5
	syscall
	# scanf("%d", $v0)
	move	$t0, $v0

	mul	$t1, $t0, $t0 #y=x*x

	li	$v0, 1
	move	$a0, $t1
	syscall

	li	$v0, 11
	li	$a0, '\n'
	syscall


	li	$v0, 0
	jr	$ra

.data
enter_a_number:
	.asciiz	"Enter a number: "
# char *enter_a_number = "Enter a number: "
