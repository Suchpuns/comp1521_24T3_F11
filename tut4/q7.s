_coord_y_offset = 4

main:
	la	$t1, _enrolment
	add	$t2, $t1, 18 # $t2 = &grade
	add	$t2, $t2, 2 # &grade[2]




.data
_coord:
	.space 4 # offset 0
	.space 4 # offset 4

_enrolment:
	.space 4 # 0
	.space 9 # 4
	.space 5 # 13
	.space 3 # 18
	.space 3 # unused
	.space 8 # 24