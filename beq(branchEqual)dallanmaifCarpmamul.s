.data 

etiket1: .asciiz "Firat Bilgisayar"
etiket2: .word 0x7aab8bcd
#---------------------------------
#if kullanumı t0 t1 e eşitse dallan ve mul et çarp
.text 

main:
	li $t0,5
	li $t1,5
	j kontrol
	
	carp:
		mul $t2,$t0,$t1
		j bitir
	
	
	kontrol:
	beq $t0,$t1,carp
	

bitir:
#---------------------------------
li $v0,10
syscall