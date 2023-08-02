.globl main

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    addi t1, x0, 1 # factr=1
    addi t2, x0, 2 # storing 2 in reg
    blt a0, t2, exit
    add t3, x0, a0 #i=x

    loop:
    mul t1 , t1 , t3 # factr=factr*i
    addi t3, t3, -1 #i--

    blt x0 , t3, loop #check for loop condition
exit:
add a0 x0 t1
jr ra
