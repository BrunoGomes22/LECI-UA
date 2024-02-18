
    .equ    SIZE, 20
    .equ    READ_STR, 9
    .equ    PRINT_STR, 8
    .equ    PRINT_INT, 6
    .equ    PUT_CHAR, 3
    .equ    PRINT_INT10, 7

    .data
res:    .asciiz "\nResultados:\n"
str:    .asciiz "Introduza 2 strings: "
str1:   .space 21
str2:   .space 21
str3:   .space 41
    .text
    .globl main
main:
    addiu $sp, $sp, -4
    sw $ra, 0($sp)

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

    li $a0, '\n'
    li $v0, PUT_CHAR
    syscall # putchar('\n')

    la $a0, str2
    jal strlen # strlen(str2)

    move $a0, $v0
    li $a1, 10
    li $v0, PRINT_INT
    syscall # printInt(strlen(str2), 10)

    li $a0, '\n'
    li $v0, PUT_CHAR
    syscall # putchar('\n')

    la $a0, str3
    la $a1, str1
    jal strcpy # strcpy(str3, str1)

    move $a0, $v0
    la $a1, str2

    jal strcat # strcat(str3, str2)

    move $a0, $v0
    li $v0, PRINT_STR
    syscall # printStr(str3)

    la $a0, str1
    la $a1, str2
    jal strcmp # strcmp(str1, str2)

    li $a0, '\n'
    li $v0, PUT_CHAR
    syscall # putchar('\n')

    move $a0, $v0
    li $v0, PRINT_INT10
    syscall # printInt10(strcmp(str1, str2))

    lw $ra, 0($sp)
    addiu $sp, $sp, 4

    li $v0, 0
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

########## funct strcpy ###########

strcpy:
    move $t0, $a0 # char *p = dst

for1: lb $t2, 0($a1) # for( ; ( *dst = *src ) != '\0'; dst++, src++ );     
      sb $t2, 0($a0)
    beq $t2, 0, endfor1
    addi $a0, $a0, 1
    addi $a1, $a1, 1
    j for1
endfor1:
    move $v0, $t0
    jr $ra

########## funct strcat ###########

strcat:
    addiu $sp, $sp, -12
    sw $ra, 0($sp)
    sw $s0, 4($sp)
    sw $s1, 8($sp)

    move $s0, $a0 # char *p = dst
    move $s1, $a0

for2: lb $t6, 0($s1) # for( ; *dst != '\0'; dst++ );
    beq $t6, 0, endfor2
    addi $s1, $s1, 1
    j for2
endfor2:
    move $a0, $s1
    jal strcpy # strcpy(dst, src)
    move $v0, $s0

    lw $ra, 0($sp)
    lw $s0, 4($sp)
    lw $s1, 8($sp)
    addiu $sp, $sp, 12

    jr $ra

########## funct strcmp ###########

strcmp:
for3: lb $t5, 0($a0)
    lb $t6, 0($a1)
    bne $t5, $t6, endfor3
    beq $t5, 0, endfor3
    addi $a0, $a0, 1
    addi $a1, $a1, 1
    j for3
endfor3:
    sub $v0, $t5, $t6
    jr $ra
