	
	.data
	.eqv  SIZE,5
	.eqv read_int, 5
	.eqv print_string, 4
str:	.asciiz "\nIntroduza um numero: "
	.align 2 #garante que o proximo label seja multiplo de 4 
		 # .word alinha automaticamente 
lista:	.space 20 # SIZE * 4	
	.text
	.globl main
#Mapa de registos
#i: $t0
#lista $t1
#lista + 1: $t2

main: 	li $t0,0 # i = 0;
while: 	bge $t0, SIZE, endw # while(i < SIZE) {

	la $a0, str
	ori $v0, $0, print_string
	syscall # print_string(str);
	 
 	li $v0,read_int
 	syscall # $v0 = read_int();
 	
 	la $t1,lista # $t1 = lista (ou &lista[0])
 	sll $t2,$t0,2 # i * 4
 	addu $t2,$t1,$t2 # $t2 = &lista[i] (enderços n há sinal)
 	
 	sw $v0,0($t2) # lista[i] = read_int();
 	
 	addi $t0,$t0,1 # i++
 	j while # }
 	
endw: 	jr $ra # termina programa 