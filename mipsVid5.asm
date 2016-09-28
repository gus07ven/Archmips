.data
	age: .word 32 # my age variable
.text
	#Print and integer to the screen
	li $v0,1
	lw $a0, age
	syscall