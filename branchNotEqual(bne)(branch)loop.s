.data

etiket1: .asciiz "Firat Bilgisayar"
etiket2: .word	0x7aa8bcd


#-------------------
.text #the user codes

main:
	li $t0,0x10010000
	li $t7,0x20

dongu:
	
	lb $t1,0($t0)
	addi $t0,$t0,1 #t0 1bayt arttır
	bne $t1,$t7,dongu
	
	
	


#---------------
li $v0,10
syscall