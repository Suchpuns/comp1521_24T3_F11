N_SIZE = 10
# $t0 : i
# $t1 : &numbers
# $t2 : &numbers[i]
# $t3 : numbers[i]

main:
	li	$t0, 0
while_scan_cond:
	bge	$t0, N_SIZE, while_scan_end
while_scan_body:
	li	$v0, 5
	syscall
	mul	$t2, $t0, 4 # $t2 = i * 4
	sw	$v0, numbers($t2) # numbers[i] = $v
	addi	$t0, 1
	b	while_scan_cond
while_scan_end:
	li	$t0, 0
while_print_cond:
	bge	$t0, N_SIZE, while_print_end
while_print_body:
	mul	$t2, $t0, 4
	lw	$a0, numbers($t2) # $t3 = numbers[i]
	li	$v0, 1
	syscall

	li	$v0, 11
	li	$a0, '\n'
	syscall

	addi	$t0, 1
	b	while_print_cond

while_print_end:
	li	$v0, 0
	jr	$ra
	.data
numbers:                                  
        .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
