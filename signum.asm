# Author:			Samuel Birhanu
# Date:				Jan 25, 2023
# Description:		This program prints the signum value of a number in the $t0 register using an if-else branching

.text
	li $t0, 31		# let's test the program with 43 in $t0
	
	bltz $t0, ifNegative
	
	# number is positive so put 1 in $s0
	li $s0, 1
	j finally
	
	ifNegative:
		# number is negative so put -1 in $s0
		li $s0, -1
		
	finally:
		# finally, print the value in $s0
		li $v0, 1
		move $a0, $s0
		syscall
	
	