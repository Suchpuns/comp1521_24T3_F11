# s = $t0
# length = $t1
# *s = $t2

main:
	la	$t0, string
	li	$t1, 0
while_not_null_cond:
	lb	$t2, ($t0)
	beq	$t2, '\0', while_not_null_end
while_not_null_body:
	move	$a0, $t2
	li	$v0, 11
	syscall
	li	$a0, '\n'
	li	$v0, 11
	syscall
	addi	$t1, 1
	addi	$t0, 1

	b	while_not_null_cond
while_not_null_end:


	li	$v0, 0
	jr	$ra

   .data
string:
   .asciiz  "...."