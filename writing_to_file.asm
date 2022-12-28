#################################################################################
# This program opens a file and writes a string to the file from memory buffer
# by SAMUEL BIRHANU
# this is assembly code for the MIPS32 architecture
#################################################################################

.data

fout: .asciiz "testout.txt"
buffer: .asciiz "The quick brown fox jumpes over the lazy dog"

.text
# let's open a file
li $v0, 13			# syscall 13 is for open file
la $a0, fout		# address of the file name string (should be null terminated)
li $a1, 1			# flag (1 is for write-only with create)
syscall				# open file

# now v0 contains the 'file descriptor.' let's save it for later
move $s1, $v0

# now let's write to the file
li $v0, 15			# syscall 15 is for write to file
move $a0, $s1		# a0 should contain the file discriptor to write to.
la $a1, buffer		# a1 should contain the address of the buffer containing the string to write
li $a2, 44			# a2 shoudl contain length of characters to write (hardcoded here)
syscall				# write to file

# now let's close the file. remember that we have the file descriptor in a0
li $v0, 16			# 16 is syscall code for close file
					# a0 shoud contain the file descriptor. it already does contain
syscall				# close file


