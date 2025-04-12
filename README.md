# MIPS-Qtspim-BOT
Qtspim uygulamasında yaptığım MIPS , Assembly kod uygulamaları.
Bilgisayar organizasyonu ve tasarımı dersi için yapılan uygulamalar.
------------------KOMUTLAR-----------------------------------------
li (Load Immediate):
Bir sabit sayıyı doğrudan bir register’a yüklemek için kullanılır.
Örnek: li $t0, 5 → $t0 register’ına 5 değeri yüklenir.

la (Load Address):
Bir değişkenin (etiketin) adresini bir register’a yükler.
Örnek: la $a0, mesaj → mesaj isimli değişkenin bellekteki adresi $a0 register’ına yüklenir. Genelde print_string syscall’ıyla kullanılır.

lw (Load Word):
Bellekten bir kelime (4 byte) alıp register’a yükler.
Örnek: lw $t1, 0($t0) → $t0'ın gösterdiği adresteki değeri $t1'e yükler.

sw (Store Word):
Bir register’daki değeri belleğe yazar.
Örnek: sw $t1, 0($t0) → $t1’deki değeri $t0’ın gösterdiği adrese kaydeder.

add (Add):
İki register’daki sayıyı toplar, sonucu bir başka register’a koyar.
Örnek: add $t2, $t0, $t1 → $t2 = $t0 + $t1

addi (Add Immediate):
Bir register’a bir sabit sayı ekler, sonucu başka bir register’a koyar.
Örnek: addi $t0, $zero, 10 → $t0 = 10 (çünkü $zero = 0)

syscall (System Call):
MIPS’te işletim sistemi ile iletişime geçmek için kullanılır. Hangi işlemin yapılacağı $v0 register’ındaki koda göre belirlenir.
Bazı önemli $v0 değerleri:
1: tam sayı yazdır
4: yazı yazdır
5: klavyeden tam sayı oku
10: programı sonlandır
