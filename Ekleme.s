.data

.text


main:
    addi $t0, $zero, 0xb   # $t0 = 5

    # Programdan çık
    li $v0, 10
    syscall