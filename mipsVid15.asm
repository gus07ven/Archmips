.data
	message: .asciiz "Hi, everybody, my name is Big Daddy Weave. \n"
.text
	main:
		jal displayMessage
		
		addi $s0, $zero, 5
		
		# Print number 5
		li $v0, 1
		add $a0, $zero, $s0
		syscall
	
	# Tell the system that the program is done.
	# Caller - how you tell main this is the end of the program
	li $v0, 10
	syscall
	
	# Callee procedure 
	displayMessage:
		li $v0, 4
		la $a0, message
		syscall 
		
		jr $ra