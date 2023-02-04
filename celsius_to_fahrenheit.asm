# this program converts Celsius (stored at the "celsius" label) to Fahrenheit and prints it.
# since the conversion involves division and that could result in floating point numbers,
# we're using floating point registers for all data

.data
	celsius: .float 100
	nine: .float 9
	five: .float 5
	thirtyTwo: .float 32

.text
	
	# this is what we should do: (celsius * 9 / 5) + 32

	lwc1 $f0, celsius
	lwc1 $f1, nine
	lwc1 $f2, five
	lwc1 $f3, thirtyTwo
	
	# now do the arithmetic
	mul.s $f0, $f0, $f1		# celsius = celsius * 9
	div.s $f0, $f0, $f2		# celsius = celsius / 5
	add.s $f0, $f0, $f3		# celsius = celsius + 32 ... now the celsius has turned into fahrenheit
	
	
	# now show the result
	li $v0, 2
	mov.s $f12, $f0
	syscall
	
	
