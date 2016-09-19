.data
	array: .word 2,4,3,6,1	
.text
	la $s6, array
	lw $t0, 0($s6)
	lw $t1, 4($s6)
	lw $t2, 12($s6)
	lw $t3, 16($s6)
	sw $t3, 0($s6)
	sw $t0, 4($s6)
	sw $t1, 12($s6)
	sw $t2, 16($s6)
	