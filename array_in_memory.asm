# Author:		Samuel Birhanu
# Date:			Jan 25, 2023
# Description;	A program showcasing how to read and write to memory, and how to define arrays and reserve space in memory

.data
	chr: .word 'r'
	empty: .space 12	
	nums: .word 1,4,2,3
	
.text
	li $a0, 's'
	li $v0, 11
	syscall
	
	# write in the reserved space
	li $t0, 10				# the number to write in the first word of the reserved space
	sw $t0, empty			# this is a macro command (shortcut) to store a word at a memory address. sw $t0, ($t1) would be the default
	addi $t0, $t0, 3		# add 3 and put the result on the next reserved word in memory
	sw $t0, empty + 4		# repeating ... 
	addi $t0, $t0, 3
	sw $t0, empty + 8
	
	# reading the array
	li $v0, 1			# we'll be printing each element of the array
	lw $a0, empty		# this is a similar macro command (shortcut) to read a word from memory directly without having to put the
						# memory address in a register. the default would be lw $t0, ($t1) where $t1 has the base memory address
	syscall
	lw $a0, empty + 4
	syscall
	lw $a0, empty + 8
	syscall
	
	li $v0, 10		# halt
	syscall
	
	
	
	
	