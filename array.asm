##########################################################################################
# THIS PROGRAM DEMONSTRATES HOW TO READ FROM AND WRITE TO ARRAYS IN MEMORY
# Assembly for the MIPS32 architecture.
# by SAMUEL BIRHANU
##########################################################################################

.text
# a[12] = h + a[8]
# let a = base location 268500992
li $s0, 268500992
li $s1, 13		# the value of a[8]
# let's set a[8]
sw $s1, 32($s0)
# let's set h
li $t0, 5
# let's add a[8] and h and store in a[12]
add $t0, $t0, $s1
sw $t0, 48($s0)

