#   $v0: current max value
max:
        begin
	push	$s0

max_end:
        pop     $ra
        end
        jr      $ra

main:
	push	$ra

	la	$t1, node1
	la	$t0, node2
	sw	$t0, 4($t1)
	la	$t1, node3
	sw	$t1, 4($t0)
	la	$t0, node4
	sw	$t0, 4($t1)

	la	$a0, node1
	jal	max

	move	$a0, $v0
	li	$v0, 1
	syscall

	li	$a0, '\n'
	li	$v0, 11
	syscall


	pop	$ra

	li	$v0, 0
	jr	$ra


    .data
node1:  .word 6, 0
node2:  .word 4, 0
node3:  .word 5, 0
node4:  .word 2, 0