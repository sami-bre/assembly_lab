.data
	a: .double 2.3
	b: .double 1.1
	
.text
	ldc1 $f0, a		# loading the numbers from memory to registers
	ldc1 $f2, b		# each double precision floating number takes 2 refisters to store. for example, a is stored in $f0 and $f1.
	
	add.d $f4, $f0, $f2		# adding the numbers
	
	
	# now let's pring the resulting double precision floating number
	mov.d $f12, $f4
	li $v0, 3
	syscall
	
	
	