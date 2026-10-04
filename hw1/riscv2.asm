.data

space: .asciz " "

.text
.globl main

main:

    li a7, 5
    ecall
    
    mv t0, a0

    li t1, 126

    li t2, 13

    blt t0, t1, x_is_min

    mv t3, t1       # t3 = min
    mv t4, t0       # t4 = max
    j print_loop

x_is_min:
    mv t3, t0       # t3 = min
    mv t4, t1       # t4 = max

print_loop:
    bgt t3, t4, exit

    mv a0, t3
    li a7, 1
    ecall

    la a0, space
    li a7, 4
    ecall
    
    add t3, t3, t2

    j print_loop

exit:
    li a7, 10
    ecall