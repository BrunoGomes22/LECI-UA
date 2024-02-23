    .equ READ_CORE_TIMER,11 
    .equ RESET_CORE_TIMER,12 
    .equ PUT_CHAR,3 
    .equ PRINT_INT,6
    .data
    .text
    .globl main
main: addiu $sp, $sp, -8
    sw $s0, 4($sp)
    sw $ra, 0($sp)
    li $s0, 0
while: li $a0, '\r'
    li $v0, PUT_CHAR
    syscall

    lui $a1, 4
    ori $a1, 10
    move $a0, $s0
    li $v0, PRINT_INT
    syscall

    li $a0, 10
    jal delay

    addi $s0, $s0, 1
    j while
    lw $ra, 0($sp)
    lw $s0, 4($sp)
    addiu $sp, $sp, 8
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
    
 
