.data
	value: .word 7
.text
main:	lw $t2, value	# load value variable into $t2	
	li $v0, 1 	# load appropriate system call code into register $v0;
	move $a0, $t2	# code for printing integer is 1
	syscall		# call operating system to perform operation

