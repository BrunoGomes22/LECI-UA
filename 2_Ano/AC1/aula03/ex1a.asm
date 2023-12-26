# Mapa de registos:
# soma: $t0
# value: $t1
# i: $t2
 	.data
str1:   .asciiz "Introduza um numero: "
str2:   .asciiz "Valor ignorado\n"
str3:   .asciiz "A soma dos positivos e': "
        .eqv print_string,4
        .eqv read_int,5
        .eqv print_int10, 1
        
        .text
 	.globl main
main:   li $t0,0 # soma = 0;
 	li $t2,0 # i = 0;
 	li $t1,5 # $t1 = 5
for: 	bge $t2,$t1,endfor # while(i < 5) {
	la $a0, str1
	li $v0, print_string # print_string("Introduza um numero");
 	syscall
 	
 	li $v0, read_int # value=read_int();
 	syscall
 	
 	move $t3, $v0 # $t3 = value
 	
 	ble $t3,$0,else # if(value > 0)
 	add $t0,$t0,$t3 # soma += value;
 	j endif #
else: 	# else
	la $a0, str2
	li $v0, print_string # print_string("Valor ignorado");
	syscall
	j endif
 		
endif: addi $t2,$t2,1 # i++;
 	j for # }
endfor: 
	la $a0,str3 
	li $v0, print_string # print_string("A soma dos positivos e'");
 	syscall
 	 
 	move $a0,$t0
 	li $v0, print_int10
 	syscall             # print_int10(soma);
 	 
 	jr $ra 