# Mapa de registos
# val: $t0
# n: $t1
# min: $t2
# max: $t3

	.data
	
str1:	.asciiz "Digite ate 20 inteiros (zero para terminar):"
str2:	.asciiz "Máximo/mínimo são: "
	.eqv print_int10, 1
	.eqv print_char, 11
	.eqv read_int, 5
	.eqv print_string, 4
	.text
	.globl main
	
main:
	li $t1, 0 # n = 0
	li $t2, 0x7FFFFFFF #$t2 = min = 0x7FFFFFFF
	li $t3, 0x80000000 #$t3 = max = 0x80000000
	
do:	

	ori $v0, $0, read_int
	syscall #read_int()
	
	move $t0, $v0 # $t0 = val
	
if1:	beq $t0, 0, endif1  # if(val ! = 0)
	
if2:	ble $t0, $t3, endif2 #if(val > max)
	move  $t3, $t0 # max = val
endif2:	

if3:	bge $t0, $t2, endif3  #if(val < min)
	move $t2, $t0 # min = val
endif3:

endif1:
	addi $t1, $t1, 1 #n++
	
	#meter branch para o do aqui
	bgt $t1, 20, end	
	bne $t0, 0, do
end:
	la $a0,str2
	ori $v0, $0, print_string
	syscall #print_string(str2)
	
	move $a0, $t3
	ori $v0, $0, print_int10
	syscall
	
	li $a0, ':'
	ori $v0, $0, print_char
	syscall
	
	move $a0, $t2
	ori $v0, $0, print_int10
	syscall
	
	jr $ra