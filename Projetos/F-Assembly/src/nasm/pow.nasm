leaw $1,%A
movw (%A),%D
movw %D,%A
movw %A,%S
LOOP:
leaw $1,%A
addw %D,(%A),%D
decw %S
leaw $LOOP,%A
jg %S
nop
leaw $1,%A
subw %D,(%A),%D
leaw $0,%A
movw %D,(%A)

























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































