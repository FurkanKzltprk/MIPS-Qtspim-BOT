.data 
	mesaj: .asciiz "Faktroiyel alinacak sayiyi giriniz:"
	
.text

main:
	li $v0 ,4
	la $a0, mesaj
	syscall

	#Girilen değeri al
	
	li$v0,5
	syscall
	move $a0,$v0
	
	li $v1,1
	
	jal fakt
	
	#sonuc yazdır
	li $v0,1
	move $a0,$v1
	syscall
	
bitir:

li $v0 , 10
syscall

fakt:
	addi $sp,$sp,-8
	sw $ra,4($sp)
	sw $a0,0($sp)
	
	slti $t0,$a0,2
	bne $t0,$zero,stackKapat
	
	addi $a0,$a0,-1
	jal fakt
	
stackKapat:
	lw $ra,4($sp)
	lw $a0,0($sp)
	addi $sp,$sp,8
	mul $v1,$a0,$v1
	jr $ra




