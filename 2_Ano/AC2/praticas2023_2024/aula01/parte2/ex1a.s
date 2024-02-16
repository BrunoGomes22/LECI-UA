        .equ GET_CHAR, 2
        .equ PUT_CHAR, 3
        .equ PRINT_INT, 6

        .text
        .globl main
main:
        li $t1, 0      # cnt = 0

do:     li $v0, GET_CHAR 
        syscall # getChar()

        move $a0, $v0
        li $v0, PUT_CHAR
        syscall # putChar(c)

        addi $t1, $t1, 1 # cnt++
        bne $a0, '\n', do # while(c != '\n')

        move $a0, $t1
        li $a1, 10
        li $v0, PRINT_INT
        syscall # printInt(cnt,10)

        li $v0, 0 # return 0
        jr $ra