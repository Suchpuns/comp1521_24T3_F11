N_SIZE = 3
NUM_COLS = 3
STUFF_LETTER_OFFSET = 4
STUFF_NUMBER2_OFFSET = 5
# $t0: i
# $t1: j
# $t2: i * NUM_COLS

main:
	la	$t0, stuff # $t0 = &stuff
	add	$t0, STUFF_NUMBER2_OFFSET # $t0 = &stuff.letter
	lb	$a0, ($t0)
	li	$v0, 11
	syscall

	li	$a0, '\n'
	li	$v0, 11
	syscall
	li	$v0, 0
	jr	$ra

	.data
# numbers:
#         .word 0, 1, 2, 0, 1, 2, 0, 1, 2
letters:
	.byte 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i'

stuff:
	.word 0
	.byte 'b'
	.byte 'a'


# 0 1 2
# 0 1 2
# 0 1 2

# numbers[1][1] = 1
# &numbers[1][1] = 18 = &numbers + (i * NUM_COLS + j) * 4
# &numbers = 2

# &numbers[i][j] = &numbers + ((i * NUM_COL) + j) * 4