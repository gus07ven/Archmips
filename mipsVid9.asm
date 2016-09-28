.data
	number1: .word 20
	number2: .word 8

.text
	lw $t0, number1($zero)
	lw $t1, number2($zero)
	
	# Substract 20 - 8
	sub $t2, $t0, $t1
	
	# Print result
	li $v0, 1
	add $a0, $t2, $zero
	syscall
