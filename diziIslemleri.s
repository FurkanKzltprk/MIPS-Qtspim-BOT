.data
dizi:	.space 40

SystemMessage1: .asciiz "Bir integer değer giriniz:"
SystemMessageF: .asciiz "Dizi elemanlarının toplamı:"



#------------------
.text


main:

	li $t0,0
	
Loop:
li $v0, 4 	#ekrana text yazmak için 
la $a0, SystemMessage1	
syscall
	
li $v0, 5  # integer değer girilecek
syscall
move $t1,$v0

sw $t1,dizi($t0)
addi $t0,$t0,4
bne $t0,40,Loop

li $s0,0 #toplam sonucu s0 ' da tutulsun
li $t0,0

Loop2: 
	lw $t2,dizi($t0) #dizinin bu adresteki değerini t2 ' ye ata
	add $s0,$s0,$t2 
	addi $t0,$t0,4
	bne $t0,40,Loop2

li $v0, 4
la $a0, SystemMessageF
syscall
li $v0, 1
move $a0, $s0
syscall
	
	


bitir:
#--------------------
li $v0,10
syscall