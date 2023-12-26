# Mapa de registos:
# value: $t0
# bit: $t1
# i: $t2

 	.data
str1: 	.asciiz "Introduza um numero: "
str2: 	.asciiz "\nO valor em binário e': "
 	.eqv print_string,4
 	.eqv read_int,5
 	.eqv print_char,11 
 	
 	.text
 	.globl main
main: 	la $a0,str1
 	li $v0,print_string # (instrução virtual)
 	syscall # print_string(str1);
 	
 	li $v0, read_int
 	syscall
 	move $t0, $v0    # value=read_int();
 	
 	la $a0, str2
 	li $v0, print_string 
 	syscall                # print_string(str2);
 	 
 	li $t2,0 # i = 0
for: 	bge $t2,32,endfor # while(i < 32) {
 	li $t3,0x80000000 #
 	
if:     
	rem $t5, $t2, 4
	bne $t5,0, endif1
	
	li $a0, ' '
 	li $v0, print_char
 	syscall
	
endif1:
 	
 	li $t7, 0x80000000
 	and $t6, $t0, $t7  # $t6 = (value $ 0x80000000)
 	srl $t1, $t6, 31
 	
 	addi $a0, $t1, 0x30
 	li $v0, print_char
 	syscall

 	sll $t0, $t0, 1 # value = value << 1;
 	addi $t2, $t2, 1 # i++;
 	j for # }
endfor: 	#
 	jr $ra # fim do programa