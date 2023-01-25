# Author;			Samuel Birhanu
# Date:				Jan 25, 2023
# Desscription:		A program showcasing conditional jumps

.data
	equal: .asciiz "register values are equal"
	notEqual: .asciiz "register values are NOT equal"

.text
	li $t0, 7
	li $t1, 10
	
	li $v0, 4
	
	beq $t0, $t1, cond2		# branching starts here
	
	cond1: la $a0, notEqual
			j final
			
	cond2: la $a0, equal
	
	final: syscall