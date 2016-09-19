.data
	arrayA: .space 8
	arrayB: .space 8

.text
	addi $s3, $s3, 7
	addi $s4, $s4, 2
	la $s5, arrayA
	la $s6 arrayB
	sub $t0, $s3, $s4
	sll $t0, $t0, 2
	add $t0, $t0, $s5
	lw $t1, 0($t0)
	sw $t1, 32($s6)
	lw $t2, 32($s6)
	li $v0, 1
	move $a0,$t2
	syscall