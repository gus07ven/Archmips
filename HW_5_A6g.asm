.data
	prompt: .asciiz "Please enter an integer to add: "
	message: .asciiz "The total is: "

.text
	main:	
		li $v0, 4
		la $a0, prompt
		syscall
			
		li $v0, 5
		syscall
			
		while: 
			beqz $v0,exit
			move $s2,$v0 
			add $s1,$s1,$s2
			
			li $v0, 4
			la $a0, prompt
			syscall
			
			li $v0, 5
			syscall
			
			j while
			 
		exit:
		li $v0, 4
	    	la $a0, message
	    	syscall
	    	
	    	add $a0,$s1,$zero
	    	li $v0, 1
	    	syscall
	    	
	    	li $v0, 10
	    	syscall
	    	
	    	
			
