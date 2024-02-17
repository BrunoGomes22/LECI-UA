
    .equ    SIZE, 20
    .equ    READ_STR, 9
    .equ    PRINT_STR, 8
    .equ    PRINT_INT, 6
    .equ    PUT_CHAR, 3

    .data
res:    .asciiz "Resultados:\n"
str:    .asciiz "Introduza 2 strings: "
str1:   .space 21
str2:   .space 21
str3:   .space 41
    .text
    .globl main
main:
    la $a0, str
    li $v0, PRINT_STR
    syscall

    la $a0, str1
    li $a1, SIZE
    li $v0, READ_STR
    syscall # readStr(str1, SIZE)

    li $a0, '\n'
    li $v0, PUT_CHAR
    syscall # putchar('\n')

    la $a0, str2
    li $a1, SIZE
    li $v0, READ_STR
    syscall # readStr(str2, SIZE)

    la $a0, res
    li $v0, PRINT_STR
    syscall # printStr(Resultados)

    la $a0, str1
    jal strlen # strlen(str1)

    move $a0, $v0
    li $a1, 10
    li $v0, PRINT_INT
    syscall # printInt(strlen(str1), 10)





    jr $ra

########## funct strlen ###########

strlen:
    li $t0, 0
for: lb $t1, 0($a0)
    beq $t1, 0, endfor
    addi $a0, $a0, 1
    addi $t0, $t0, 1
    j for
endfor:
    move $v0, $t0
    jr $ra


