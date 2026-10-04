.data

array: .space 116

.text
.globl main

main:
    la t0, array

    li t1, 0

    li t2, 29

read_loop:
    bge t1, t2, exit

    li a7, 5
    ecall

    beq a0, zero, exit

    sw a0, 0(t0)

    addi t0, t0, 4

    addi t1, t1, 1

    j read_loop

exit:
    li a7, 10
    ecall