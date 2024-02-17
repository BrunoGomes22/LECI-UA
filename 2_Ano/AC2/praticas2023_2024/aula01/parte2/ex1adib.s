# $t0 -> state
# $t1 -> cnt

    .equ   UP, 1
    .equ   DOWN, 0
    .equ   PUT_CHAR, 3
    .equ   PRINT_INT, 6
    .equ   INKEY, 1

    .data

    .text
    .globl main
main:
    li $t0, 0 # state = $t0 = 0
    li $t1, 0 # cnt = $t1 = 0

do:
    li $a0, '\r'
    li $v0, PUT_CHAR
    syscall # putChar('\r')

    move $a0, $t1
    li $a1, 0x0003000A
    li $v0, PRINT_INT
    syscall # printInt(cnt, 10 | 3 << 16)

    li $a0, '\t'
    li $v0, PUT_CHAR
    syscall # putChar('\t')

    move $a0, $t1
    li $a1, 0x00080002
    li $v0, PRINT_INT
    syscall # printInt(cnt, 10 | 3 << 16)

    li $a0, 5
    jal wait # wait(5)
    
    li $v0, INKEY
    syscall # inkey()

if1: bne $v0, '+', if2
    li $t0, UP # state = UP
if2: bne $v0, '-', if3
    li $t0, DOWN # state = DOWN
if3: bne $v0, 's', if4 
    j end
if4: bne $v0, 'r', if5
    li $t1, 0 # cnt = 0

if5: bne $t0, UP, else
    addi $t4, $t1, 1 # $t4 = cnt + 1
    andi $t4, $t4, 0xFF # $t4 = $t4 & 0xFF
    move $t1, $t4 # cnt = $t4
    j endif5
else:
    li $t6, 1
    sub $t4, $t1, $t6 # $t4 = cnt - 1
    andi $t4, $t4, 0xFF # $t4 = $t4 & 0xFF 
    move $t1, $t4 # cnt = $t4
endif5:
    bne $v0, 'q', do # if v0 != 'q' goto do
end:
    li $v0, 0 # return 0
    jr $ra

############# funct wait ################

wait:
    li $t2, 0 # $t2 = i = 0
    li $t5, 515000
    mult $a0, $t5 
    mflo $t3 # $t3 = $a0 * 515000 (lo tem os 32 bits menos significativos)

for: bge $t2, $t3, endfor # if i >= $t3 goto endfor
    addi $t2, $t2, 1 # i++
    j for
endfor:
    jr $ra