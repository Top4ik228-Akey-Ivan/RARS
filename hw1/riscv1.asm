.text
.globl main

main:
    li a7, 5
    ecall

    mv t0, a0

    li t1, 13

    beq t0, t1, equal

    li a0, 0
    li a7, 1
    ecall

    j exit

equal:
    li a0, 1
    li a7, 1
    ecall

exit:
    li a7, 10
    ecall