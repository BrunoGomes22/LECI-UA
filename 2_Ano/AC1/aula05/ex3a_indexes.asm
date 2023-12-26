# Mapa de registos
# i : $t0  (primeira parte)
# $lista[i] : $t1 (primeira parte)
# houve_troca: $t4
# i: $t5
# lista: $t6
# lista + i: $t7
 	.data
 	.eqv FALSE,0
 	.eqv TRUE,1
 	.eqv read_int, 5
 	.eqv SIZE,10
 	.eqv print_int, 1
 	.eqv print_string, 4
str1: 	.asciiz "\nDigite um valor: "
str2:	.asciiz ","
	.align 2
lista:	.space 40 # SIZE *  4
 	.text
 	.globl main
 	
main: 	# código para leitura de valores (por index)

	li $t0, 0 # i = 0
for1:	bge $t0, SIZE, endfor1   # while(i<SIZE)
	
	la $t6, lista # $t6 = &lista[0]	
	
	la $a0, str1
	ori $v0, $0, print_string
	syscall #print_string(str1)
	
	
	ori $v0, $0, read_int
	syscall #read_int()
	
	sll $t1,$t0,2 # i*4
	addu $t1, $t6, $t1 # $lista[i]
	
	sw $v0, 0($t1) 
	
	addi $t0, $t0, 1 # i++
	
	j for1
endfor1:

	#final do código para leitura de valores

do:	
	li $t4, FALSE # houveTroca = false;
	li $t5, 0 # i = 0
	
	
for2:	bge $t5, 9, endfor2 #while(i < SIZE-1)
	la $t6, lista # $t6 = &lista[0]
	sll $t7, $t5, 2 # $t7 = i * 4
	addu $t7, $t7, $t6 # $t7 = &lista[i]
	
	lw $t8, 0($t7) # $t8 = lista[i]
	lw $t9, 4($t7) # $t9 = lista[i+1]
	
if:	ble $t8, $t9, endif #if (lista[i] > lista[i+1])
	
	sw $t9, 0($t7) # lista[i+1] avança um indice para trás
	sw $t8, 4($t7) # lista[i] avança um indice para a frente
	
	li $t4, TRUE # houveTroca = TRUE
endif:
	
	addi $t5, $t5,1 # i++
	j for2

endfor2:
	beq $t4, TRUE, do
	
	#código para imprimir valores (por index)
	li $t0, 0 #i = 0
for3:	bge $t0, SIZE, endfor3 #while(i<SIZE)

	la $t6, lista # $t6 = &lista[0]	
	sll $t4, $t0,2 # $t4 = i*4
	addu $t4, $t4, $t6 # &lista[i]
	
	lw $a0, 0($t4)
	ori $v0, $0, print_int
	syscall
	
	la $a0, str2
	ori $v0, $0, print_string
	syscall #print_string(str2)
	
	addi $t0, $t0, 1
	
	j for3

endfor3:


 	jr $ra 
 	
 	
 	
 	
 	
 	
 	
 	
