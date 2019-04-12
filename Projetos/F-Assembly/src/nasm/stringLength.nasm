leaw $7, %A
movw %A, %D
leaw $0, %A
movw %A, %S
LOOP:
incw %D
movw %D %A
movw (%A) %S
leaw %LOOP, %A
jne %S
nop
leaw $8, %A
subw %D, %A, %D
leaw $0, %A
movw %D, (%A)

