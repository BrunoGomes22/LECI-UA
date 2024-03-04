    .equ TRISE, 0x6100
    .equ LATB, 0x6060
    .equ TRISB, 0x6040
    .equ LATE, 0x6120
    .equ PORTB, 0x6050
    .data
    .text
    .globl main
main:
    lui $t2, 0xBF88 # load base adress
# program RE0 as output
    lw $t0, TRISE($t2)
    andi $t0, $t0, 0xFFFE
    sw $t0, TRISE($t2)
# program RB0 as input
    lw $t0, TRISB($t2)
    ori $t0, $t0, 0x0001
    sw $t0, TRISB($t2)
# loop
loop: lw $t0, PORTB($t2)
    lw $t1, LATE($t2)
    andi $t0, $t0, 0x0001
    andi $t1, $t1, 0xFFFE
    or $t0, $t0, $t1
    sw $t0, LATE($t2)
    j loop
    jr $ra
