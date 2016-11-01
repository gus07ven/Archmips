# Loop
# int input, int add  = 0;
# while (input != 0){	
#    add += input;
#    ask for input;
#}
.data
	space:   .asciiz ", "
	prompt:	 .asciiz "Please enter an integer to add:"
	message: .asciiz "The total is:"

.text
	main: 
	    	# i = 0
		addi $t0, $zero, 0
	
	    	# While input is not zero
	    	while: 
	         bgt $t0, 10, exit
	         jal printNumber
	         addi $t0, $t0, 1   #i++
	         j while
	    
	    	exit:
	    	  li $v0, 4
	    	  la $a0, message
	    	  syscall
	    	  
	    	  
	    #End of program
	    li $v0, 10
	    syscall
	    
	 printNumber:
	    li $v0, 1
	    add $a0, $t0, $zero
	    syscall
	    
	    li $v0, 4
	    la $a0, space
	    syscall
	    
	    jr $ra

	
