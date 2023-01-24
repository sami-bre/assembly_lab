##############################################################################
# a program to read a string from one file and write it in another file
# by SAMUEL BIRHANU
# this is assembly for the MIPS32 RISC architecture
##############################################################################

.data
	srcFile: .asciiz "source.txt"
	destFile: .asciiz "dest.txt"
	data: .asciiz ""

.text
main:
	# open the source file
	li $v0, 13
	la $a0, srcFile
	li $a1, 0
	syscall
	
	# read the string in the source file
	move $a0, $v0
	li $v0, 14
	la $a1, data
	li $a2, 20
	syscall
	
	# close the source file
	li $v0, 16
	# a0 already has the file descriptor
	syscall
	
	# open the destination file
	li $v0, 13
	la $a0, destFile
	li $a1, 1
	syscall
	
	# write the data to the destination file
	move $a0, $v0
	li $v0, 15
	la $a1, data
	li $a2, 20
	syscall
	
	# close the destination file
	li $v0, 16
	# a0 already has the file descriptor
	syscall
	
	