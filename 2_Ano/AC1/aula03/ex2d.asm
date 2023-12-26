# Mapa de registos:
# value: $t0
# bit: $t1
# i: $t2
# flag : $t4

          .data
str1:     .asciiz "Introduza um numero: "
str2:     .asciiz "\nO valor em binário e': "
          .eqv print_string,4
          .eqv read_int,5
          .eqv print_char,11 
     
          .text
          .globl main
main:     la $a0,str1
          li $v0,print_string # (instrução virtual)
          syscall # print_string(str1);
     
          li $v0, read_int
          syscall
          move $t0, $v0    # value=read_int();
     
          la $a0, str2
          li $v0, print_string 
          syscall                # print_string(str2);
      
          li $t2,0 # i = 0      (inicializar variaveis do for)
          li $t4,0 # flag = 0   (inicializaar variaveis do for)
     
for:      bge $t2,32,endfor # while(i < 32) {
     
          srl $t1, $t0, 31 # bit = value >> 31;
     
    
if:      beq $t4, 1, if3    # se flag == 1 salta logo para or label if3
if4:     beq $t1, 0, endif  # se flag == 0 e bit == 0 salta para o label endif
        
if3:     li $t4, 1 #flag = 1  #não é um if, o label if3 só serve para fazer o salto
    
if2:    
        rem $t5, $t2, 4  # $t5 = i%4
        bne $t5,0,endif2 # $t5 != 0
    
        li $a0, ' '
        li $v0, print_char
        syscall          #print_char(' ')
     
endif2:
        addi $a0, $t1, 0x30
        li $v0, print_char
        syscall          #print_char(0x30 + bit); 
    
endif:
     
        sll $t0, $t0, 1 # value = value << 1;
        addi $t2, $t2, 1 # i++;
        j for # }
endfor:     #
        jr $ra # fim do programa
