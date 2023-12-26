# Mapa de registos
#  num: $t0
#  p: $t1
# *p: $t2 (Registo temporário para guardar o valor
#  armazenado na posição de memória p)

 	.data
 	.eqv SIZE,20
 	.eqv read_string,8
 	.eqv print_int10,1
str: 	.space 21       # 20 carateres + 1 o byte terminador 

	.text
 	.globl main
 	
main: 	
	la $a0,str 	
 			
 			
 			
 	li $a1,SIZE # $a1=SIZE
 	li $v0,read_string
 	syscall # read_string(str,SIZE)
 	
 	li $t0,0	# num=0; 
 	la $t1,str	# p = str
 	
while: 		
 	lb $t2,0($t1) # $t2 = p 
 	beq $t2,'\0',endw # {
if: 	blt $t2,'0',endif # if(*p >= '0' &&
 	bgt $t2,'9',endif # *p <= '9');
 	addi $t0,$t0,1 # num++;
endif:
 	addi $t1,$t1,1 # p++; porque estamos a trabalhar com um array de chars
 	j while # }
 	
endw: 	move $a0,$t0 
	ori $v0, $0, print_int10
	syscall # print_int10(num);
	
 	jr $ra # termina o programa 