main:


	ble	$t0, 100, if_x_cond_false
	bge	$t0, 1000, if_x_cond_false
if_x_cond_true:

	b	if_x_cond_end
if_x_cond_false:

if_x_cond_end:



	.data
enter_a_number:
	.asciiz	"Enter a number: "
medium:
	.asciiz "medium\n"
small_big:
	.asciiz "small/big\n"