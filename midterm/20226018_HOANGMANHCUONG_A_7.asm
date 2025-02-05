.data
 prompt: .asciz "Enter a positive integer"
 perfect: .asciz "\nperfect square: "
 not_perfect: .asciz "\nnot perfect square: "
.text
 main:
	 input_loop:
	 	li a7, 4  # print string
	 	la a0, prompt
	 	ecall
	 	
	 	li a7, 5 #read int
	 	ecall
	 	mv t0, a0
	 	
	 	blez t0, input_loop
	 	
	 	li t1, 1 #i initialize i= 1
	 # print the perfect squares
	 print_loop:
	 	mul t2,t1,t1
	 	bge t2,t0,check_square
	 	
	 	add a0,t2,zero
	 	li a7, 1 #print i*i
	 	ecall
	 	
	 	li a0, 32 # print space
	 	li a7, 11 #print char
	 	ecall
	 	
	 	addi t1, t1 , 1 # i = i+1
	 	j print_loop
	
	check_square:
		beq t2, t0 perfect_square # check that i*i == n ?
		j not_perfect_square
	perfect_square:
		la a0, perfect
		li a7, 4 # print string
		ecall
		
		mv a0,t0
		li a7, 1 #print n
		ecall
		j done
	not_perfect_square:
		la a0, not_perfect
		li a7, 4 # print string
		ecall
		
		mv a0,t0
		li a7, 1 #print n
		ecall
	done:
 		