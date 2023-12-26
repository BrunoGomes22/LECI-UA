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
	.align 2 # MUITO IMPORTANTE! (alinhar com endereços multiplos de 4)
lista:	.space 40 # 10 inteiros de 4 bytes
	.text
	.globl main
main:	
	#código para ler valores (por ponteiro)
	la $t0, lista # p = &lista[0]
	li $t3,SIZE
	sll $t3, $t3, 2 # $t3 = SIZE * 4
	addu $t6, $t0, $t3 # $t6 = &lista[SIZE]
	
for1:	bge $t0, $t6, endfor1#for(*p;p<lista+SIZE;p++)
	
	la $a0, str1
	ori $v0, $0, print_string
	syscall
	
	ori $v0, $0, read_int
	syscall
	
	sw $v0, 0($t0)
	
	addi $t0,$t0,4
	
	j for1

endfor1:
	# fim do código para leitura de valores por ponteiro
	
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

	#código para printar valores (por index)
	la $t0, lista # $t0 = p = &lista[0]
	li $t1, SIZE
	sll $t1, $t1, 2 # $t1 = SIZE*4
	addu $t2, $t0, $t1 # $t2 = $lista[SIZE]
	
for4:	bge $t0, $t2, endfor4	#for(p; p<lista+SIZE;)
	
	lw $a0, 0($t0) 
	
	ori $v0, $0, print_int
	syscall #print_int(lista[i])
	
	li $a0, ','
	ori $v0, $0, print_char
	syscall #print_char(',')
	
	addi $t0, $t0, 4
	
	
	j for4
	
endfor4:
	
	#fim do código de printar valores
	
	jr $ra