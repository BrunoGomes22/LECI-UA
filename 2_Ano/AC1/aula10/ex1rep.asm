	.data
	.eqv read_float, 6
	.eqv read_int, 5
result:	.float 1.0
	.text
	.globl main
	
main:	#esta é uma versão mais intuitiva do ex 1a
	ori $v0, $0, read_float
	syscall # $f0 = x
	
	ori $v0, $0, read_int
	syscall # $v0 = y
	
	addiu $sp, $sp, -20
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	s.s $f12, 16($sp)
	
	la $s1, result
	move $s2, $v0 # $s2 = y
	mov.s $f12, $f0 # $f12 = x
	
	jal xtoy
	
	
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	l.s $f12, 16($sp)
	addiu $sp, $sp, 20
	
	mov.s $f12, $f0
	ori $v0, $0, 2
	syscall # return result
	
	jr $ra
	
	
	
######### funct xtoy #############

xtoy:
	li $s0, 0 # $s0 = i = 0
	
	move $a0, $s2 
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal abs # abs(y) = $v0 
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	l.s $f2, 0($s1) # result
for:	bge $s0, $v0, endfor # i<abs(y)
	
	
if2:	ble $s2, $0, else # y > 0
	mul.s $f2, $f2, $f12 # result = result * x
	j endif2
	
else:
	div.s $f2, $f2, $f12
	
endif2:

	addi $s0, $s0, 1 # i++
	j for
endfor:
	
	mov.s $f0, $f2

	jr $ra
	
######### funct abs ################

abs:	move $t0, $a0 # $t0 = val

if:	bge $t0, $0, endif
	sub $t0, $0, $t0 # $t0 = val = -val
endif:
	move $v0, $t0 # return $v0 = val

	jr $ra
	