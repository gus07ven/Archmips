.data
	arrayA: ..space 12
	arrayB: .space 12
	
.text
	addi $s0, $zero, 10
	addi $s1, $zero, 8
	addi $s2, $zero, 6
	addi $s3, $zero, 4
	addi $s4, $zero, 2
	
	lw $t0, arrayA($s5)
	sub $t0, $s3, $s4
	lw $t1, arrayB($s6)
	add $t1, $t0, $zero
	
	li $v0,1
	addi $a0,$t1,0
	syscall



