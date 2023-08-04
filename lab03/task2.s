.data

array: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
.globl main
.text

main:
li a0, 5
mv a1, a0
jal ra, dataArray

print_arr:
    addi  a0, x0, 1
    lw a1, 0(s2)     # Load the value from the array
    ecall
    addi a1, x0, ' '    # a0 gets address of string containing space
    addi a0, x0, 11     # Prepare for print char syscall
    ecall

    addi s0, s0, 1   # Increment i
    add s2, s2, s4   # Move to the next array element

    blt s0, s1, print_arr  # Loop while i < 3
    li a7, 10        # System call number for program termination
    ecall 


dataArray:
li s0, 0 #i=0
li s1, 3
la s2, array
loop:
mv a2, s0
addi sp, sp, -4
sw ra, 0(sp)
jal ra, compare
lw ra, 0(sp)
addi sp,sp, 4
sw a3, 0(s2)

addi s0, s0, 1
addi s2, s2, 4
blt s0, s1, loop

addi s2, s2, -12
addi s0, s0, -3
jr ra

subb:
sub a1, a1, a2 #a=a-b
jr ra

compare:
addi sp, sp, -4
sw ra, 0(sp)
jal ra, subb
lw ra, 0(sp)
addi sp,sp, 4
bge x0, a1, else
li a3, 1
jr ra
else:
li a3, 0
jr ra
