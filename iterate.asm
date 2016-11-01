.data
	prompt:   	.asciiz "Please enter a positive number: "
	negative: 	.asciiz "Sorry, negative numbers are not accepted."
	Zero:		.asciiz	"Zero\n"
	One:		.asciiz	"One\n"
	Two:		.asciiz	"Two\n"
	Three:		.asciiz "Three\n"
	Four:		.asciiz "Four\n"
	Five:		.asciiz "Five\n"
	Six:		.asciiz "Six\n"
	Seven:		.asciiz "Seven\n"
	Eigth:          .asciiz "Eigth\n"
	Nine:		.asciiz "Nine\n"
	number_name: 	.word  Zero,One,Two,Three,Four,Five,Six,Seven,Eigth,Nine	
	inputs:    	.word 
	iterator: 	.word 0
	size:		.word 9

.text

	# Load number names to array "numbers"
	la $t0, number_name
	
	lw $t1, iterator
	lw $t2, size
	
begin_loop:	
	bgt $t1,$t2,exit_loop
	
	sll $t3,$t1,2   # t3 = 4 *i
	addu $t3,$t3,$t0
	li $v0,4
	lw $a0,0($t3)
	syscall
	
	addi $t1,$t1,1  # increase iterator
	j begin_loop
	
exit_loop:
	li $v0, 10
	syscall
	
	