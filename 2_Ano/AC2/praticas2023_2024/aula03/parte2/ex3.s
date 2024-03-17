    .equ ADDR_BASE_HI, 0xBF88
    .equ TRISE, 0x6100
    .equ TRISB, 0x6040
    .equ PORTB, 0x6050
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

loop:
    lw $t1, LATE($t0) # read LATE register
    andi $t1, $t1, 0xFFE1 # reset bits 4-1
    sll $t3, $t2, 1 # shift counter value to position 1
    or $t1, $t1, $t3 # merge counter value with LATE register
    sw $t1, LATE($t0) # update LATE register

    li $a0, 2000 # 500 ms 
    jal delay

    lw $t4, PORTB($t0) # read PORTB register
    andi $t4, $t4, 0x0008 # get the value of RB3

    bne    $t4,0x0008,else
    blt $t2, 15, up
    li $t2, 0
up: addi $t2, $t2, 1
    j endif

else: bgt $t2, 0, down
    li $t2, 15
down: sub $t2, $t2, 1

endif:


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