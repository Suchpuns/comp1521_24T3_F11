# $t0: x
main:

while_x_init:
	li	$t0, 2
while_x_cond:
	bge	$t0, 30, while_x_end
while_x_body:
	li	$v0, 1
	move	$a0, $t0
	syscall

	li	$v0, 11
	li	$a0, '\n'
	syscall

	add	$t0, $t0, 3
	b	while_x_cond
while_x_end: