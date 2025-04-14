#------------------------

.data 


#------------------------

.text


main:
	li $s0,5
	li $s1,12
	
	li $t0,-5
	li $t1,10
	jal carp
	
	j bitir 
	
	
#############################
carp:
	addi $sp,$sp,-8 #sp yıkarı çekildi lifo mantığı
	sw $s0,0($sp)
	sw $s1,4($s1)
	
	mul $s0,$t0,$t1
	li $s1,0x10010000
	sw $s0,0($s1)
	
	lw $s0,0($sp)
	lw$s1,4($sp)
	addi $sp,$sp,8 #geri eski haline getirdim
	
	jr $ra #jump return adress
##############################



bitir:
#-----------------------------
li $v0,10
syscall