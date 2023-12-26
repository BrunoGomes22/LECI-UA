# Mapa de registos
# p: $t0 (int *p)
# *p: $t1 (Registo temporário para guardar o valor armazenado em memória)
# lista+Size: $t2
 	.data
str1: 	.asciiz "; "
str2: 	.asciiz "\nConteudo do array:\n"
lista:	.word 8,-4,3,5,124,-15,87,9,27,15 # a diretiva ".word" alinha num endereço
 						# múltiplo de 4
 	.eqv print_int10,1
 	.eqv print_string,4
 	.eqv SIZE,10
 
  	.text
 	.globl main
main: 	la $a0, str2 
	ori $v0, $0, print_string
	syscall	# print_string(str2)
	
 	la $t0,lista # p = lista
 	li $t2,SIZE #
 	sll $t2,$t2,2 # SIZE * 4 (cada valor ocupa 4 bytes)
 	addu $t2,$t0,$t2 # $t2 = lista + SIZE; dá o endereço a seguir ao ultimo
 	
while: 	bgeu $t0,$t2,endw # while(p < lista+SIZE) { tem de ser unsigned porque estamos a trabalhar com ponteiros
 	lw $t1,0($t0) # $t1 = *p;
 	
 	move $a0, $t1
 	ori $v0, $0, print_int10
 	syscall # print_int10( *p );
		
 	la $a0, str1 
 	ori $v0, $0, print_string
 	syscall # print_string(str1);
 	
 	addiu $t0,$t0,4 # p++; (de 4 em 4) ponteiro
 	j while
endw: 	# }
 	jr $ra # termina o programa  