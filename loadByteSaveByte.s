.data


etiket1: .asciiz "Firat bilgisayar"

#------------------------
.text 


main:

li St0, 0x10010004
1b $t1, 0 ($t0)
1b St2, 2 ($t0)

li St3, 0x10010014
li $t4, 0x70
sb $t4,0($t3)

li $v0,10
syscall