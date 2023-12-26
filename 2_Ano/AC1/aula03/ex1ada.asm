#mapa de registos
# $t0 = gray
# $t1 = bin
# t2 = mask

        .data
str1:   .asciiz "Introduza um numero: "
str2:   .asciiz "\nValor em binario: "
str3:   .asciiz "\nValor em código Gray: "
        .eqv print_string,4
        .eqv read_int,5
        .eqv print_int16,34 
     
        .text
        .globl main
        
main:   la $a0,str1
	ori $v0,$0,print_string
	syscall #print_string(str1)
	
	ori $v0,$0,read_int
	syscall #read_int()
	
	move $t0,$v0 #gray = read_int()
	
	srl $t2, $t0, 1 # mask = gray >> 1
	
	move $t1, $t0 # bin = gray
	
while: 
	xor $t1, $t1, $t2 # bin = bin ^ mask
	srl $t2, $t2, 1 # mask = mask >> 1
	bne $t2, 0, while
	
	la $a0,str3
	ori $v0,$0,print_string
	syscall #print_string(str3)
	
	move $a0, $t0
	ori $v0, $0, print_int16
	syscall #print_int16(gray)
	
	la $a0,str2
	ori $v0,$0,print_string
	syscall #print_string(str2)
	
	move $a0, $t1
	ori $v0, $0, print_int16
	syscall #print_int16(bin)
	
	jr $ra
	
	
	
