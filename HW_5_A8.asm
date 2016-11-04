# Exercise A.8-printing	out the words for an entered number
.data
	prompt:   	.asciiz "Please enter a positive number: "
	negative: 	.asciiz "Sorry, negative numbers are not accepted."
	Zero:		.asciiz	"Zero "
	One:		.asciiz	"One "
	Two:		.asciiz	"Two "
	Three:		.asciiz "Three "
	Four:		.asciiz "Four "
	Five:		.asciiz "Five "
	Six:		.asciiz "Six "
	Seven:		.asciiz "Seven "
	Eight:          .asciiz "Eight "
	Nine:		.asciiz "Nine "
	number_name: 	.word  Zero,One,Two,Three,Four,Five,Six,Seven,Eight,Nine	
	inputs:    	.space 40 
	iterator: 	.word 0
	
.text
main:
	# Take input 1
	li $v0, 4
	la $a0, prompt
	syscall
	
	li   $v0,5
	syscall
	move $s0,$v0
	
	# Check if number is positive
	addi $s1,$s1,10
	bgtz $s0, divide
	li $v0, 4
	la $a0, negative
	syscall
	j exit
	
divide:
	# store value in array
	la $t0, inputs
	lw $t1, iterator
	sll $t2, $t1,2 #t2= 4 * iterator
	addu $t2,$t2,$t0
	addi $t1,$t1,1 # increase iterator
	# Divide the number by ten and to get indiviual digits	
	div $s3,$s0,$s1	
	mfhi $t3 
	sw $t3,0($t2)
	mflo $s0 
	blez $s3, continue
	sw $t1,iterator
	j divide
	
continue:
	# Create switch statements and do a reverse loop to print values
	beqz $t1,exit
	lw $t4,($t2)
	beq $t4,0,zero
	beq $t4,1,one
	beq $t4,2,two
	beq $t4,3,three
	beq $t4,4,four
	beq $t4,5,five
	beq $t4,6,six
	beq $t4,7,seven
	beq $t4,8,eight
	beq $t4,9,nine		
zero:
	li $v0, 4
	la $a0, Zero
	syscall
	addi, $t1,$t1,-1
	srl $t2, $t1,2 
	addu $t2,$t2,$t0
	j continue
one:
	li $v0, 4
	la $a0, One
	addi, $t1,$t1,-1
	addi $t2, $t2,-4 
	syscall
	j continue
two:
	li $v0, 4
	la $a0, Two
	addi, $t1,$t1,-1
	addi $t2, $t2,-4 
	syscall
	j continue
three:
	li $v0, 4
	la $a0, Three
	addi, $t1,$t1,-1
	addi $t2, $t2,-4 
	syscall
	j continue
four:
	li $v0, 4
	la $a0, Four
	addi, $t1,$t1,-1
	addi $t2, $t2,-4 
	syscall
	j continue
five:
	li $v0, 4
	la $a0, Five
	addi, $t1,$t1,-1
	addi $t2, $t2,-4 
	syscall
	j continue
six:
	li $v0, 4
	la $a0, Six
	addi, $t1,$t1,-1
	addi $t2, $t2,-4 
	syscall
	j continue
seven:
	li $v0, 4
	la $a0, Seven
	addi, $t1,$t1,-1
	addi $t2, $t2,-4 
	syscall
	j continue
eight:
	li $v0, 4
	la $a0, Eight
	addi, $t1,$t1,-1
	addi $t2, $t2,-4 
	syscall
	j continue
nine:
	li $v0, 4
	la $a0, Nine
	addi, $t1,$t1,-1
	addi $t2, $t2,-4 
	syscall
	j continue
exit:
	li $v0, 10
	syscall
	
	
	



	
