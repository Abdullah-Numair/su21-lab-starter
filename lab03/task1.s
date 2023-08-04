.data
b: .word 0, 0, 0

.text
.globl main
main:
    li s0, 0    # i = 0
    li s1, 7    # a = 7
    la s2, b    # Load address of array b into s2
    li s3, 3    # Loop limit
    li s4, 4    # Word offset for array indexing

loop:
    mul t0, s0, s1   # Calculate i * a
    add t4, s1, t0   # Calculate a + (i * a)
    sw t4, 0(s2)     # Store the value in the array

    addi s0, s0, 1   # Increment i
    add s2, s2, s4   # Move to the next array element

    blt s0, s3, loop # Loop if i < 3
    
    addi s2, s2, -12 #return the base address of array to zero
    addi s0, s0, -3 #again set i=0 for using it in print_arr function
print_arr:
    
    addi  a0, x0, 1
    lw a1, 0(s2)     # Load the value from the array
    ecall
    addi a1, x0, ' '    # a0 gets address of string containing space
    addi a0, x0, 11     # Prepare for print char syscall
    ecall

    addi s0, s0, 1   # Increment i
    add s2, s2, s4   # Move to the next array element

    blt s0, s3, print_arr  # Loop while i < 3
