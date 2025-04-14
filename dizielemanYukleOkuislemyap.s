#-----------------------
#dizi elemanlarını hafızaya yüklemek
#ve okumak , okuyup işlem yapma örneği
.data 

SystemMessage1: .asciiz "Bir integer deger giriniz :"
SystemMessageF: .asciiz "Dizi elemanlarinin toplami : "


#-----------------------
.text 
 
		
main:
li $t0,0x10010050
 li $t8,0
 
 Loop:
	li $v0, 4 #v0=4 stirng değer girecem demek
	la $a0, SystemMessage1
	syscall
	
	li $v0, 5 #v0=5 integer değer girecem demek
	syscall
	move $t1,$v0 #v0 daki int değeri t1'e attım
	
	sw $t1,0($t0)
	addi $t8,1
	addi $t0,$t0,4
	bne  $t8,10,Loop
	
	#topla
	
	li $t0,0x10010050
	li $t8,0
	add $s0,$zero,$zero
	
Loop2:
	lw $t2,0($t0)
	add $s0,$s0,$t2
	addi $t8,1
	addi $t8,$t0,4
	bne $t8,10,Loop2
	
	li $v0,4 
	la $a0, SystemMessageF
	syscall
	
	
		



#-----------------------
bitir:
#terminate the main program
li $v0,10
syscall

