# MIPS-Qtspim-BOT

QtSPIM uygulamasında yaptığım MIPS / Assembly kod uygulamaları.  
Bilgisayar Organizasyonu ve Tasarımı dersi için yapılan uygulamalar.

---

## 🚀 KOMUTLAR

### `li` (Load Immediate)  
Bir sabit sayıyı doğrudan bir register’a yüklemek için kullanılır.  
**Örnek:** `li $t0, 5` → `$t0` register’ına 5 değeri yüklenir.

---

### `la` (Load Address)  
Bir değişkenin (etiketin) adresini bir register’a yükler.  
**Örnek:** `la $a0, mesaj` → `mesaj` isimli değişkenin bellekteki adresi `$a0` register’ına yüklenir.

---

### `add` (Add)  
İki register’daki sayıyı toplar, sonucu başka bir register’a koyar.  
**Örnek:** `add $t2, $t0, $t1` → `$t2 = $t0 + $t1`

---

### `addi` (Add Immediate)  
Bir register’a sabit sayı ekler.  
**Örnek:** `addi $t0, $zero, 10` → `$t0 = 10` (çünkü `$zero = 0`)

---

### `sub` (Subtract)  
İki register’daki sayıyı birbirinden çıkarır.  
**Örnek:** `sub $t2, $t0, $t1` → `$t2 = $t0 - $t1`

---

### `mul` (Multiply)  
İki sayıyı çarpar.  
**Örnek:** `mul $t2, $t0, $t1` → `$t2 = $t0 * $t1`  
(*Bazı QtSPIM sürümlerinde `mult` kullanılabilir.*)

---

### `div`, `mflo`, `mfhi` (Bölme ve sonuç alma)  
- `div $t0, $t1` → `$t0 / $t1` işlemi  
- `mflo $t2` → bölüm sonucu `$t2`'ye  
- `mfhi $t3` → kalan sonucu `$t3`'e

---

### `lw` (Load Word)  
Bellekten bir kelime (4 byte) alır.  
**Örnek:** `lw $t1, 0($t0)` → `$t0`'ın gösterdiği adresteki değeri `$t1`'e yükler.

---

### `sw` (Store Word)  
Bir register’daki değeri belleğe yazar.  
**Örnek:** `sw $t1, 0($t0)` → `$t1`’deki değeri `$t0`’ın gösterdiği adrese kaydeder.

---

### `beq` (Branch if Equal)  
İki register eşitse, belirtilen etikete gider.  
**Örnek:** `beq $t0, $t1, etiket`

---

### `bne` (Branch if Not Equal)  
İki register farklıysa, belirtilen etikete gider.  
**Örnek:** `bne $t0, $t1, etiket`

---

### `j` (Jump)  
Koşulsuz olarak belirtilen etikete atlar.  
**Örnek:** `j bitir`

---

### `jal` (Jump and Link)  
Bir fonksiyonu çağırır, dönüş adresini `$ra`'ye kaydeder.  
**Örnek:** `jal fonksiyon`

---

### `jr` (Jump Register)  
Register’daki adrese atlar.  
**Örnek:** `jr $ra` → Fonksiyondan dönüş

---

### `syscall` (System Call)  
İşletim sistemiyle iletişimi sağlar. `$v0` register’ı hangi işlemin yapılacağını belirler.

**Bazı `$v0` değerleri:**
- `1`: tam sayı yazdır  
- `4`: string yazdır  
- `5`: tam sayı oku  
- `10`: programı sonlandır
