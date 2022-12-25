##########################################################################################
# THIS PROGRAM READS A STRING FROMT THE CONSOLE AND PRINTS IT BACK
# Assembly for the MIPS32 architecture.
# by SAMUEL BIRHANU
##########################################################################################



.data														# the data segment

invite: .asciiz "Write something here: "							
divider: .asciiz "\n-------- here's what you wrote:\n"		# we'll use these strings later

.text														# the program

# let's print the invite
# let's then print the divider
li $v0, 4											# syscall 4 is for printing string
la $a0, invite										# put the address of the divider string in a0 (so it get's printec by syscall)
syscall												# print the invite

# let's read the string and put in in memory
li $v0, 8											# 8 is a syscall code to read string
li $a0, 0x100100e0									# the address of the memory buffer to store the string in (should be in a0)
li $a1, 20											# the macimum number of characters to read from console (should be in a1)
syscall												# do the reading

# let's then print the divider
li $v0, 4											# syscall 4 is for printing string
la $a0, divider										# put the address of the divider string in a0 (so it get's printec by syscall)
syscall												# print the divider

# now let's print the string we just read
# v0 already contains 4 so that's good (print string)
li $a0, 0x100100e0									# put the address of the string buffer (memory location) in a0
syscall



