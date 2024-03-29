# cnt1 -> $s0
# cnt5 -> $s1
# cnt10 -> $s2
    .equ PUT_CHAR, 3
    .equ PRINT_INT, 6
    .equ RESET_CORE_TIMER, 12
    .equ READ_CORE_TIMER, 11
    .data
    .text
    .globl main
main:
    addiu $sp, $sp, -16
    sw $ra, 12($sp)
    sw $s0, 8($sp) 
    sw $s1, 4($sp)
    sw $s2, 0($sp)

while:  # while(true)
    li $a0, '\r'
    li $v0, PUT_CHAR
    syscall

    move $a0, $s0
    lui $a1, 5
    ori $a1, 10
    li $v0, PRINT_INT
    syscall

    li $a0, '\t'
    li $v0, PUT_CHAR
    syscall

    move $a0, $s1
    lui $a1, 5
    ori $a1, 10
    li $v0, PRINT_INT
    syscall

    li $a0, '\t'
    li $v0, PUT_CHAR
    syscall

    move $a0, $s2
    lui $a1, 5
    ori $a1, 10
    li $v0, PRINT_INT
    syscall

    li $a0, 100
    jal delay

    addi $s2, $s2, 1

if1: rem $t0, $s2, 2
    bne $t0, 0, if2
    addi $s1, $s1, 1
if2: rem $t0, $s2, 10
    bne $t0, 0, endif2
    addi $s0, $s0, 1
endif2:
    j while

    lw $ra, 12($sp)
    lw $s0, 8($sp) 
    lw $s1, 4($sp)
    lw $s2, 0($sp)
    addiu $sp, $sp, 16
    jr $ra

delay:
    li $v0, RESET_CORE_TIMER
    syscall
    li $t0, 20000 # k
    mul $t1, $a0, $t0
loop:   li $v0, READ_CORE_TIMER
    syscall
    blt $v0, $t1, loop
    jr $ra