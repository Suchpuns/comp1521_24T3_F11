main:
	li $t0, 3
	li $t1, 3

	add $t3, $t0, $t1

	li $v0, 1
	move $a0, $t3 # $a0 = $t3
	syscall

	li $v0, 11
	li $a0, '\n'
	syscall

	# return 0
	li	$v0, 0
	jr	$ra


.data
hello: 
	.asciiz "Hello world"
