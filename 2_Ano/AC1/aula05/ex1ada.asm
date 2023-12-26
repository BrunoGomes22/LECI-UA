# Mapa de registos
# $t0 : &lista[i]
# $t1 : i
# $t2 : j
# $t5 : lista[i]
# $t6 : lista[j]

	.data
	.eqv print_string, 4
	.eqv print_int, 1
	.eqv print_char, 11
	.eqv read_int, 5
str1:	.asciiz "\nDigite um valor: "
str2: 	.asciiz "\n"
	.eqv SIZE, 10 
	.align 2 # MUITO IMPORTANTE! (alinhar com endere�os multiplos de 4)
lista:	.space 40 # 10 inteiros de 4 bytes
	.text
	.globl main
	
main:	
	#c�digo para ler valores (por index)
	li $t1, 0 # $t1 = i = 0
for1:	bge $t1, SIZE, endfor1		# while (i < SIZE)
	
	la $t0, lista # $t0 = $lista[0]
	sll $t3, $t1, 2 # $t3 = i*4
	addu $t4, $t0, $t3 # $t0 = &lista[i]
	
	la $a0, str1
	ori $v0, $0, print_string
	syscall     #print_string(str1)
	
	ori $v0, $0, read_int
	syscall #read_int()
	
	#move $a0, $v0 
	
	sw $v0, 0($t4) # meter o valor no array
	
	addi $t1, $t1, 1
	
	j for1

endfor1:
	# fim do c�digo para leitura de valores por index
	
	li $t3, SIZE
	addi $t3, $t3, -1 # $t3 = SIZE - 1
	li $t1, 0 # $t1 = i = 0
	
for2: 	bge $t1, $t3, endfor2 #while(i<SIZE-1)
	
	addi $t2, $t1, 1 # $t2 = j = i + 1
for3:   bge $t2,SIZE, endfor3 #for(j = i+1; j<SIZE; j++)
	
	la $t0, lista # $t0 = $lista[0]
	
	sll $t7, $t1, 2 # $t7 = i*4
	addu $t4, $t0, $t7 # $t4 = $lista[i]
	
	sll $t5, $t2, 2 # $t5 = j*4
	addu $t8, $t0, $t5 # $t8 = &lista[j]
	
	
	lw $t9, 0($t4) # $t9 = $lista[i]
	
	lw $t6, 0($t8) # $t8 = $lista[i+1] 
	
if:	ble $t9, $t6, endif#if(lista[i] > lista[j])
	
	sw $t9, 0($t8)
	sw $t6, 0($t4)
	
endif:

	addi $t2, $t2, 1 # j++
	
	j for3

endfor3:
	
	
	addi $t1, $t1, 1 #i++
	
	j for2

endfor2:

	#c�digo para printar valores (por index)
	li $t1, 0 # $t1 = i = 0
for4:	bge $t1, SIZE, endfor4 	#while(i<SIZE)
	la $t0, lista # $t0 = &lista[0]
	
	sll $t2, $t1, 2 # $t2 = i * 4
	addu $t0, $t0, $t2 # $t0 = &lista[i]
	
	lw $t3, 0($t0)
	
	move $a0, $t3
	ori $v0, $0, print_int
	syscall # print_int(lista[i])
	
	li $a0, ','
	ori $v0, $0, print_char
	syscall #print_char(',')
	
	addi $t1, $t1, 1 #i++
	j for4
	
endfor4:
	
	#fim do c�digo de printar valores
	
	jr $ra
