# Recursive maximum of array function


# $s0: first_element
# $s1: length
# $s2: max_so_far
# $s3: &array
# $t0: temporary register
# $t1: temporary register
	.text
max:
max__prologue:
	begin
	push	$ra
	push	$s0
	push	$s1
	push	$s2
	push	$s3
max__body:
	move	$s3, $a0
	move	$s1, $a1 # Moving arguments to s registers

	lw	$s0, ($s3)

	bne	$s1, 1, max__length_eq_one_false
max__length_eq_one_true:
	move	$v0, $s0
	b	max__epilogue
max__length_eq_one_false:
	add	$a0, $s3, 4
	sub	$a1, $s1, 1
	jal	max		# max(&array[1], length - 1);
	move	$s2, $v0

	ble	$s0, $s2, max__first_gt_false
max__first_gt_true:
	move	$s2, $s0
max__first_gt_false:
	move	$v0, $s2
max__epilogue:
	pop	$s3
	pop	$s2
	pop	$s1
	pop	$s0
	pop	$ra
	end

	jr	$ra			# return;
	


	
# some simple test code which calls max
main:
main__prologue:
	push	$ra


main__body:
	la	$a0, array
	li	$a1, 10
	jal	max			# result = max(array, 10)

	move	$a0, $v0
	li	$v0, 1			# syscall 1: print_int
	syscall				# printf("%d", result)

	li	$a0, '\n'
	li	$v0, 11			# syscall 11: print_char
	syscall				# printf("%c", '\n');

	li	$v0, 0

main__epilogue:
	pop	$ra
	jr	$ra			# return 0;


.data
array:
	.word 1, 2, 3, 4, 5, 6, 4, 3, 2, 1