.data
# Burada kullanılacak veriler olsaydı (örneğin string, sabit sayılar), tanımlanırdı.
# Ama bu örnekte tüm değişkenler register'larda tutulduğu için boş bırakıyoruz.

.text


main:
    # if (a != b)
    bne $s3, $s4, IF_BLOCK     # a != b ise IF_BLOCK'a git

    # else bloğu: k = m - 150
    addi $s0, $s1, -150        
    j END_IF                   # if/else sonrası kodun devamına git

IF_BLOCK:
    # if bloğu: k = m
    add $s0, $s1, $zero        

END_IF:
    # programı sonlandır
    li $v0, 10                 
    syscall
