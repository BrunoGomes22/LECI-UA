    .data
    .text
    .globl main
main:
    addiu $sp, $sp, -16
    sw $ra, 12($sp)
    sw $s0, 8($sp)
    sw $s1, 4($sp)
    sw $s2, 0($sp)



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