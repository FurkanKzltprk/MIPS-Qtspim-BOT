#--------------------------------
.data #tge global variable field

sayi1: .word 125 # etiket veriyoruz sayi1 , 1 wordlük veri yüklicem diyorum 125 sayısını yüklüyorum
#data segmente değer atamak istiyorusak
#etiket hafızada bir adrese tekabül ediyor
#datasegmentte sonuç : 0000007d (hex) = 125 (decimal)


#--------------------------------
.text #the user code
main : 
la $s0,sayi1
lw $t1,0($s0) #s0 da ki adrese git değeri t1 registerına getir
#load adres bir etiketin adresini oto çözümleyip istediğiniz registera atıyor

li $t2,-68 #0xffffffbc(hex)
sw $t2,4($s0)


#---------------------------------
#terminate the main program

li $v0,10 #for exit, load 10 decimal into v0
syscall   # Execute the last operation