.data
	myCharacter: .byte 'm'
.text
main:	li $v0, 4
	la $a0, myCharacter
	syscall

