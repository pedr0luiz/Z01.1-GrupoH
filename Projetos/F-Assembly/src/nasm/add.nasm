
leaw $0, %A
movw (%A), %D
leaw $1, %A
addw (%A), %D, %D
leaw $2,%A
movw %D, (%A) 

movw (%A), %D
leaw %1, %A
movw (%A), %S
leaw %2, %A
addw %D, %S, (%A)