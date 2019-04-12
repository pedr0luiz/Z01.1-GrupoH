leaw $5, %A
movw (%A), %D
leaw $1, %A
andw %A, %D, %S
leaw $65534, %A
orw %A, %S, %D
notw %D
leaw $0, %A
movw %D, (%A)

