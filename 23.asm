.data
	f: .word 1
	g: .word 5
	h: .word 3
	i: .word 4
	j: .word 2
	arrayA: .space 40 	# 10 element integer array
	arrayB: .space 40 	# 10 element integer array

.text
main:	lw $s0, f 	# load variable f into $s0
	lw $s1, g 	# load variable g into $s1
	lw $s2, h 	# load variable h into $s2
	lw $s3, i 	# load varible i into $s3 
	lw $s4, j	# load variable j into $s4
	la $s5, arrayA	# load base address of array into $s5
	la $s6, arrayB	# load base address of array into $s6



