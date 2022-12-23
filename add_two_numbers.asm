#########################################################################################
# This program adds two numbers after reading them from the console, and displays the sum
# Assembly for the MIPS32 architecture.
# by Samuel Birhanu
#########################################################################################

.data
message: .asciiz "Enter a number: "		# we'll need this message as we ask for integers

.text
# read the first number into t0
li $v0, 4						# the print string syscall code.
la $a0, message					# put the address of the message string into a0. (it's an argument for the print string syscall)
syscall							# execute the print string

li $v0, 5						# read integer (into v0 - default)
syscall							# syscall - now the input is in v0
add $t0, $v0, $zero				# move the value from v0 to t0


# read the secnd number into t1
li $v0, 4						# put the print string syscall code in v0 once again
la $a0, message					# once again, put the address of the message in a0 as an argument to the print string syscall
syscall							# and execute the print string syscall

li $v0, 5						# now, read another (2nd) integer into v0 (default)
syscall							# now v0 has the new input
add $t1, $v0, $zero				# moving the new input to t1

# add the two numbers and store that in t1
add $t1, $t1, $t0				# add the value in t0 to the one in t1

# display the sum in t1
li $v0, 1						# 1 in v0 means 'print integer'
add $a0, $t1, $zero				# move the sum from t0 to a0 (so it could be printed)
syscall							# then print the integer

li $v0, 10						# finally, we halt
syscall
