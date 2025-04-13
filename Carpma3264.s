.data

.text



main:
  #32 bitlik çarpmayı daha hızlı yapıyor
#li $t0,25
#li $t1,3500
#mul $t2,$t0,$t1 #çarpma işlemi yaptık

#li $t0,1000000
#li $t1,-2000000
#mult $t0,$t1
#mflo $s0
#mfhi $s1 #32bitten büyük çarpım ypaılıca bölündü işlemler


#----------------Terminate the main program ↓↓
li $v0,10
syscall