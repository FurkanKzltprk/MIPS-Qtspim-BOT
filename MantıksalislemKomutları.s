.data 


.text

main:

# Mantıksal işlem komutları

# li 		$t0,0xd
# li 		$t1,7
# and		$t3,$t0,$t1

# li $t0 ,65535	
# nor	$t1,$t0 not or yapar
#i $t0,3 
#sll $t1,$t0,2 # sola kaydırma 2 ile çarpma gibi



# li $t0,48
# srl $t1,$t0,3  # sağa kaydırma 2 ye bölymek gibi

#li $t0,48
#li $t1,50
#slt $t2 ,$t0,$t1 # 48 50 den küçükse t2 yi 1 yap


#li $t0 ,50
# slti $t2,$t0,60

li $v0,10
syscall