    .equ READ_CORE_TIMER,11 
    .equ RESET_CORE_TIMER,12 
    .equ PUT_CHAR,3 
    .equ PRINT_INT,6
    .data 
    .text 
    .globl  main 
main:  li  $t0,0             # counter=0 
while:                       # while (1) { 
    li $a0, '\r'
    li  $v0,PUT_CHAR        #   putChar('\r')
    syscall

    move $a0, $t0
    li $a1, 0x0004000A
    li $v0,PRINT_INT       #   printInt(counter, 10 | 4 << 16)
    syscall

    li  $v0,RESET_CORE_TIMER #  
    syscall                  #   resetCoreTimer() 

while2:
    li  $v0,READ_CORE_TIMER 
    syscall
    bge $v0, 20000000, endw2 # freq = 1hz
    j while2
endw2:
    addi $t0, $t0, 1        #   counter++
    j   while                # } 
    li $v0, 0
    jr  $ra                  #