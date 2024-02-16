        .equ GET_CHAR, 2
        .equ INKEY, 1
        .equ PUT_CHAR, 3
        .equ PRINT_INT, 6

        .text
        .globl main
main:
        li $t1, 0 # $t1 = cnt = 0
do:     li $v0, INKEY
        syscall # inkey()

        move $t2, $v0  # c = inkey()
        beqz $t2, else
        move $a0, $t2
        j endif
else:   li $a0, '.'

endif:  li $v0, PUT_CHAR
        syscall

        addi $t1, $t1, 1 # cnt++
        bne $t2, '\n', do # while (c != '\n')

        move $a0, $t1
        li $a1, 10
        li $v0, PRINT_INT
        syscall # print_int(cnt,10)

        li $v0, 0
        jr $ra