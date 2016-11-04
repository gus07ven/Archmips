# Exercise A.7 read 3 integers and print out the sum of the largest two
.data
	prompt:  .asciiz "Please enter an integer to add: "
	message: .asciiz "The total sum is: "

.text
main:	
			
	# Take input 1
	li $v0, 4
	la $a0, prompt
	syscall
	
	li   $v0,5
	syscall
	move $s0,$v0
	
	# Take input 2
	li $v0, 4
	la $a0, prompt
	syscall
	
	li   $v0,5
	syscall
	move $s1,$v0
	
	# Take input 3
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0,5
	syscall
	move $s2,$v0

	# Do multiple comparisons to determine largest two numbers	
	bge  $s0, $s1, comp
	j comp2
	
comp:    
	bge  $s2, $s1, add
	j add2
comp2:
	bge $s0, $s2, add
	j add3
add:
	add $s3, $s0,$s2
	j exit
add2:
	add $s3, $s0,$s1
	j exit	
add3:
	add $s3, $s1,$s2		
exit:
        # Print the total
	li $v0, 4
	la $a0, message
	syscall
	    	
	add $a0,$s3,$zero
	li $v0, 1
	syscall
	    	
	li $v0, 10
	syscall

