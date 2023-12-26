	.data
 	.text
 	.globl main
 			 # $t0 = gray, $t1 = num, $t2 = bin
main: 	li $t0, 2 	 # gray = 2
 	move $t1, $t0    # num = gray
 	
 	srl $t3, $t1, 4  # (num >> 4)
 	xor $t1, $t1, $t3 # num = num ^ (num >> 4)	
 		
 		
 	
 	jr $ra 			
