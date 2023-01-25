# Author:				Samuel Birhanu
# Date:					Jan 25, 2023
# Description:			This program prints the absolute value of whatever number is in $t0

.text
	li $t0, -4		# let's test it with -4 in $t0
	
	bgez $t0 final
	
	# let's invert the number here
	mul $t0, $t0, -1
	
	final:  move $a0, $t0
			li $v0, 1
			syscall
	
	