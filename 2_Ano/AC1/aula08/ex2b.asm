	.data
buff:	.space 20
	.eqv print_str, 4
	.text
	.globl main
main:	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	
	li $a0, 45
	li $a1, 2
	la $a2, buff
	
	jal itoa
	
	move $a0, $v0
	li $v0, print_str
	syscall
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	jr $ra
	
# Sub-rotina interm�dia
itoa: 	addiu $sp, $sp, -20 	# reserva espa�o na stack
	sw $ra, 0($sp)
 	sw $s0, 4($sp) 	# guarda registos $sx e $ra
 	sw $s1, 8($sp)	#
 	sw $s2, 12($sp)	#
 	sw $s3, 16($sp)
 			#
 	move $s0, $a0 	# copia n, b e s para registos
 	move $s1, $a1	#
 	move $s2, $a2	## "callee-saved"
 	move $s3,$a2 	# p = s;
do: 			# do {

	rem $t0, $s0, $s1
	div $s0, $s0, $s1
	move $a0, $t0
	jal toascii
	sb $v0, 0($s3)  # *p = toascii/(digit)
	addiu $s3, $s3, 1
 	  		#
 	bgt $s0,0,do 	# } while(n > 0);
 	sb $0,0($s3) 	# *p = \0;
 	 		#
 	move $a0, $s2
 	jal strrev 	# strrev( s );
 	 		# return s;
 	lw $ra,0($sp) 	# rep�e registos $sx e $ra
 	lw $s0, 4($sp)
 	lw $s1, 8($sp)
 	lw $s2, 12($sp)
 	lw $s3, 16($sp)
 	addiu $sp,$sp,20 	# liberta espa�o na stack
 	jr $ra 		# 


toascii: addi $v0, $a0, '0' # v += '0';
	 ble $v0, '9', endif 
	 addi $v0, $v0, 7
endif:	 jr $ra


strrev: 	addiu $sp,$sp,-16 	# reserva espa�o na stack
 		sw $ra,0($sp) 		# guarda endere�o de retorno
 		sw $s0,4($sp) 		# guarda valor dos registos
 		sw $s1,8($sp) 		# $s0, $s1 e $s2
 		sw $s2,12($sp) 		#
 		move $s0,$a0 		# registo "callee-saved"
 		move $s1,$a0 		# p1 = str
 		move $s2,$a0 		# p2 = str
 					#
 					#
while1:		lb $t2, 0($s2)		#
 		beq $t2, '\0', endw1	# while( *p2 != '\0' ) {
 		addiu $s2, $s2, 1 	# p2++;
 		j while1 		# }
endw1:		addiu $s2, $s2, -1	# p2--;
					#
while2: 	bge $s1, $s2, endw2	#	# while(p1 < p2) {
 		move $a0, $s1		#
 		move $a1, $s2 		#
 		jal exchg 		# exchange(p1,p2)
 		addiu $s1, $s1, 1	#
 		addiu $s2, $s2, -1	#
 		j while2 		#
					# }
endw2: 		move $v0,$s0 		# return str
 		lw $ra,0($sp) 		# rep�e endere�o de retorno
 		lw $s0,4($sp) 		# rep�e o valor dos registos
 		lw $s1,8($sp) 		# $s0, $s1 e $s2
 		lw $s2,12($sp) 		#
 		addiu $sp,$sp,16 	# liberta espa�o da stack
 		jr $ra 			# termina a sub-rotina
 		
exchg:		lb $t0, 0($a0) #ver novamente
		lb $t1, 0($a1)
		sb $t1, 0($a0)
		sb $t0, 0($a1)
		jr $ra
