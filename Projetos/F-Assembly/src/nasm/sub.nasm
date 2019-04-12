; faz uma subtracao binaria do valor de :  RAM[1] - RAM[0] gravando em RAM[2].

leaw $0, %A
movw (%A), %D
leaw $1, %A
subw (%A), %D, %D
leaw $2, %A
movw %D, (%A)
