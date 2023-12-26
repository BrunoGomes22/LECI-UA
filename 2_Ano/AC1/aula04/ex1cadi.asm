#Mapa de registos
# p : $t1
# &str[0] : $t2
# str[i] : $t3


	.data
	.eqv SIZE,20
	.eqv read_string, 8
	.eqv print_string, 4
str1:	.asciiz "Introduza uma string: \n"
str:	.space 21 #20 carateres + '\0'

	.text
	.globl main

main:
	
	la $a0, str1
	ori $v0, $0, 4
	syscall #print_string(str1)
	
	la $a0, str
	li $a1, SIZE
	
	ori $v0, $0, 8
	syscall #read_string(str,SIZE)
	
	la $t1, str  #meter o ponteiro a apontar para o inicio do array (P = str)
	
while:
	lb $t3, 0($t1) #carregar o valor do array no $t3 
	beq $t3, '\0', endw
	
	
	
if:	# if($t3 >= 'A' && $t3 <= 'Z')
	blt $t3, 0x41, endif
	blt $t3, 0x5A, endif
	
	li $t4, 0x61      # 0x61 = 'a', 0x41 = 'A'
	sub $t3, $t3, $t4 # *p = *p - 'a'
	addi $t3, $t3, 0x41 # *p = *p + 'A'

	sb $t3,0($t1) #guardar o valor alterado no respetivo indice
	
endif:
	addi $t1, $t1, 1 #p++
	
	j while
	
endw:	
	la $a0, str
	ori $v0, $0, print_string
	syscall #print_string(str)
	
	jr $ra