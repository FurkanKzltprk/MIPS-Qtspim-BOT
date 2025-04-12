.data

.text
#https://github.com/FurkanKzltprk

main:

addi $t0,$zero,0xb #t0 registerına 0xb(hex) ekle

addi $t1,$zero,10 #t1 registerına 10 ekle (decimal

add $t2,$t1,$t0 # t2 = t1 +t0 ? 21 (decimal) 

li $t3,30 # decimal 30'u t3'e yükle
li $t4,18
sub $t5,$t3,$t4 # t3-t4=t5'e yaz

# bir macro "li" kısaltılmış bir kod gibi
# sen yazıyorsun bunu bu direkt sayıları registera yüklüyor
# pseudo-instruction kodu
#qtspimde li görünmez ori vb. görüllür
#en uygun komutlara dönüştürüyor li'yi

#Sonlandırma
li $v0,10 # 10= exit , v0 registerı hangi işlemin yapılacağını belirtir 
			# 10 değeri sisitem çağrıları arasında "Programı sonlandır" anlamına gelir.
syscall
#syscall ise $v0 registerındaki değere göre sistem çağırsını başlatır , sys+call !!