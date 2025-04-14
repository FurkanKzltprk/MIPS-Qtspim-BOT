.data

etiket1: .asciiz "Firat Bilgisayar"
etiket2: .word	0x7aa8bcd


#-------------------
.text #the user codes

main:
	li $t0,0x10010014
	lhu $t1,0($t0)
	#lhu $t1,0($t0)



#---------------
li $v0,10
syscall