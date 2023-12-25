        .equ    READ_CORE_TIMER, 11
        .equ    RESET_CORE_TIMER, 12
        .equ    PUT_CHAR, 3
        .equ    PRINT_INT, 6
        .data   
        .text
        .globl main
main:   li  $t0, 0                   #counter = 0
while:
        li  $v0, RESET_CORE_TIMER
        syscall
while1: 
        li  $v0, READ_CORE_TIMER
        syscall
        blt $v0, 20000000, while1      #while(readCoreTimer() < 200000)
endw1:                               
        move $a0, $t0
        li  $a1, 0x0004000A
        li  $v0, PRINT_INT
        syscall
        addi $t0, $t0, 1 #counter++

        li  $a0, '\r'
        li  $v0, 3
        syscall
        j   while

        li  $v0, 0                  #return 0

        jr  $ra
    