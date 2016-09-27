.data

.text
	addi $s0, $zero, 4
	sll $t0, $s0, 2
	addi $t1, $s1, 20
	srl $t1, $s1, 1
	li $v0, 1
	add $a0, $zero, $t0
	syscall
	add $a0, $zero, $t1
	syscall
	
