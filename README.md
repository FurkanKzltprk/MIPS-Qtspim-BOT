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

### `and` (Mantıksal VE)  
**Örnek:** `and $t0, $t1, $t2` → `$t0 = $t1 & $t2`

---

### `andi` (Mantıksal VE - Immediate)  
**Örnek:** `andi $t0, $t1, 0xF` → `$t0 = $t1 & 0xF`

---

### `or` (Mantıksal VEYA)  
**Örnek:** `or $t0, $t1, $t2` → `$t0 = $t1 | $t2`

---

### `ori` (Mantıksal VEYA - Immediate)  
**Örnek:** `ori $t0, $t1, 0x1F` → `$t0 = $t1 | 0x1F`

---

### `nor` (Mantıksal NOR)  
**Örnek:** `nor $t0, $t1, $t2` → `$t0 = ~($t1 | $t2)`

---

### `xor` (Mantıksal XOR)  
**Örnek:** `xor $t0, $t1, $t2` → `$t0 = $t1 ^ $t2`

---

### `xori` (Mantıksal XOR - Immediate)  
**Örnek:** `xori $t0, $t1, 0xFF` → `$t0 = $t1 ^ 0xFF`

---

### `lw` (Load Word)  
Bellekten bir kelime (4 byte) alır.  
**Örnek:** `lw $t1, 0($t0)` → `$t0`'ın gösterdiği adresteki değeri `$t1`'e yükler.

---

### `sw` (Store Word)  
Bir register’daki değeri belleğe yazar.  
**Örnek:** `sw $t1, 0($t0)` → `$t1`’deki değeri `$t0`’ın gösterdiği adrese kaydeder.

---

### `lb`, `lbu` (Load Byte / Load Byte Unsigned)  
**Örnek:** `lb $t0, 0($s1)` → Bellekten 1 byte alır (işaretli)  
**Örnek:** `lbu $t0, 0($s1)` → Bellekten 1 byte alır (işaretsiz)

---

### `sb` (Store Byte)  
**Örnek:** `sb $t0, 0($s1)` → `$t0`'daki byte'ı belleğe yazar

---

### `lh`, `lhu` (Load Halfword / Unsigned)  
**Örnek:** `lh $t0, 0($s2)` → Bellekten 2 byte alır (işaretli)  
**Örnek:** `lhu $t0, 0($s2)` → Bellekten 2 byte alır (işaretsiz)

---

### `sh` (Store Halfword)  
**Örnek:** `sh $t0, 0($s2)` → `$t0`'daki 2 byte'ı belleğe yazar

---

### `lui` (Load Upper Immediate)  
Sabit bir değeri register'ın üst 16 bitine yükler.  
**Örnek:** `lui $t0, 0x1001` → `$t0 = 0x10010000`

---

### `beq` (Branch if Equal)  
İki register eşitse, belirtilen etikete gider.  
**Örnek:** `beq $t0, $t1, etiket`

---

### `bne` (Branch if Not Equal)  
İki register farklıysa, belirtilen etikete gider.  
**Örnek:** `bne $t0, $t1, etiket`

---

### `slt` (Set on Less Than)  
**Örnek:** `slt $t0, $t1, $t2` → `$t0 = ($t1 < $t2) ? 1 : 0`

---

### `slti` (Set on Less Than Immediate)  
**Örnek:** `slti $t0, $t1, 10` → `$t0 = ($t1 < 10) ? 1 : 0`

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

### `sll` (Shift Left Logical)  
**Örnek:** `sll $t0, $t1, 2` → `$t0 = $t1 << 2`

---

### `srl` (Shift Right Logical)  
**Örnek:** `srl $t0, $t1, 2` → `$t0 = $t1 >> 2` (mantıksal)

---

### `sra` (Shift Right Arithmetic)  
**Örnek:** `sra $t0, $t1, 2` → `$t0 = arithmetic_shift($t1 >> 2)`

---

### `move` (Register Kopyalama)  
**Örnek:** `move $t0, $s1` → `$t0 = $s1`  
(*Aslında `add $t0, $s1, $zero` eşdeğeridir*)

---

### `syscall` (System Call)  
İşletim sistemiyle iletişimi sağlar. `$v0` register’ı hangi işlemin yapılacağını belirler.

**Bazı `$v0` değerleri:**
- `1`: tam sayı yazdır  
- `4`: string yazdır  
- `5`: tam sayı oku  
- `10`: programı sonlandır

---

### `nop` (No Operation)  
Hiçbir şey yapmayan komuttur. Genelde gecikme için kullanılır.  
**Örnek:** `nop`

---

Hepsi bu kadar! Artık README dosyan MIPS komutları açısından oldukça zengin. Eğer istersen bu bölümü `.md` formatında dışa aktarıp sana verebilirim. Yardımcı olmamı ister misin?
