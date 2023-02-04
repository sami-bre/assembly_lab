.data
	a: .float 3.5
	b: .float 7,1
	
.text
	lwc1 $f0, a
	lwc1 $f1, b
	
	add.s $f2, $f0, $f1		# adding the numbers
	
	li $v0, 2
	mov.s $f12, $f2
	syscall
	
	