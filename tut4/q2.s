# This program prints out a danish flag, by
# looping through the rows and columns of the flag.
# Each element inside the flag is a single character.
# (i.e., 1 byte).
#
# (Dette program udskriver et dansk flag, ved at
# sløjfe gennem rækker og kolonner i flaget.)
#

# Constants
FLAG_ROWS = 6
FLAG_COLS = 12

# register
# $t0: row
# $t1: col
# $t4: flag[row][col]

# &flag[i][j] = &flag + ((i * max_cols + j) * size_of_type)
main:
	li	$t0, 0

for_row_cond:
	bge	$t0, FLAG_ROWS, for_row_end

for_row_body:
	li	$t1, 0

for_col_cond:
	bge	$t1, FLAG_COLS, for_col_end

for_col_body:
	# printf("%c", flag[row][col]);
	# &flag[row][col] = &flag + (row * FLAG_COLS + col)
	la	$t3, flag
	mul	$t4, $t0, FLAG_COLS
	add	$t4, $t1
	add	$t4, $t4, $t3
	lb	$a0, ($t4)
	li	$v0, 11
	syscall

for_col_step:
	addi	$t1, 1
	b	for_col_cond

for_col_end:
	li	$a0, '\n'
	li	$v0, 11
	syscall

for_row_step:
	addi	$t0, 1
	b	for_row_cond

for_row_end:
	li	$v0, 0
	jr	$ra

.data
# This label inside the data region refers to the bytes of the flag.
# Note that even thought the bytes are listed on separate lines,
# they are actually stored as a single contiguous chunk or 'string' in memory.
flag:
	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'
	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'
	.byte '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.'
	.byte '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.'
	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'
	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'