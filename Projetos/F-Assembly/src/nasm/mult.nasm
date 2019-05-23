; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]

leaw $0,%A
movw (%A),%S

leaw $1,%A
movw (%A),%D

LOOP:
leaw $1,%A
addw (%A),%D,%D
decw %S
leaw $LOOP,%A
jne %S
nop

leaw $1,%A
subw %D,(%A),%D

leaw $3,%A
movw %D,(%A)
