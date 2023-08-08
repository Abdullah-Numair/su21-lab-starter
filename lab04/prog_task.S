.globl main
.text              
main:
lw a0, n
mv t1, a0
addi sp, sp, -4
sw t1, 0(sp)

factorial:
li t0, 1
lw t1, 0(sp)
bgt t1, t0, else
mul a0, a0, t0

write_tohost:
li x1, 1
sw x1, tohost, t5
j write_tohost

else:
addi t1, t1, -1
mul a0, a0, t1
sw t1, 0(sp)
j factorial


.data 
n: .word 7

.align 12
.section ".tohost","aw",@progbits;                            
.align 4; .global tohost; tohost: .dword 0;                     
.align 4; .global fromhost; fromhost: .dword 0;

