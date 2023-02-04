.text
	li $t0 3		# this is the number whose factorial we're calculating
	li $s0, 1		# this will be (kinda) an accumulator. it will hold the results of multiplicataion as
					# we multiply numbers down to 1
	li $t9, 1		# this will constantly hold 1. we'll use it for comparison purposes.
	
	start:
		mul $s0, $s0, $t0		# multiply the accumulator with t0
		subi $t0, $t0, 1		# decrement t0 by 1
		bgt $t0, $t9, start		# if t0 (the number) is still greater than 1(i.e. t9)
		
	# finally let's display the result (the value in the accumulator)
	li $v0, 1
	move $a0, $s0
	syscall
		
	
		
		
