
    .equ ADDR_BASE_HI, 0xBF88
    .equ TRISE, 0x6100
    .equ TRISB, 0x6040
    .equ LATE, 0x6120
    .equ RESET_CORE_TIMER, 12
    .equ READ_CORE_TIMER, 11
    .data
    .text

    .globl main
main:
    addiu $sp, $sp, -4
    sw $ra, 0($sp)

    lui $t0, ADDR_BASE_HI
    lw $t1, TRISE($t0)
    andi $t1, $t1, 0xFFE1 # reset bits 4-1 
    sw $t1, TRISE($t0) # update TRISE register
    lw $t1, TRISB($t0) # read TRISB register
    ori $t1, $t1,0x000E # set bits 3-1
    sw $t1, TRISB($t0) # update TRISB register

    li $t2, 0 # up counter
loop:
    lw $t1, LATE($t0) # read LATE register
    andi $t1, $t1, 0xFFE1 # reset bits 4-1
    sll $t3, $t2, 1 # shift counter value to position 1
    or $t1, $t1, $t3 # merge counter value with LATE register
    sw $t1, LATE($t0) # update LATE register

    li $a0, 1000 # 1000 ms 
    jal delay

    addi $t2, $t2, 1 # increment counter
    andi $t2, $t2, 0x000F # up conter MOD 16
    j loop # repeat

    lw $ra, 0($sp)
    addiu $sp, $sp, 4
    jr $ra


delay:
    li $v0, RESET_CORE_TIMER
    syscall
    li $t6, 20000 # k
    mul $t5, $a0, $t6
loop1:   li $v0, READ_CORE_TIMER
    syscall
    blt $v0, $t5, loop1
    jr $ra