; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em (R0) e armazena o valor em (R1).

leaw $0, %A
movw (%A), %D
leaw $1, %A
movw %D, (%A)
decw %D
decw %D
leaw $2, %A
movw %D, (%A)
movw %D, %S

leaw $LOOP, %A
jg %S
nop

LOOP:	
	leaw $1, %A
	movw (%A), %D
	leaw $LOOP2, %A
	jg %S
	nop

LOOP2:
	leaw $1, %A
	addw %D, (%A), %D
	leaw $LOOP2, %A
	decw %S
	jg %S
	nop

	leaw $1, %A
	movw %D, (%A)
	leaw $2, %A
	movw (%A), %S
	decw %S
	movw %S, (%A)

	leaw $LOOP1, %A
	jg %S
	nop
	
leaw $LOOP3, %A
jg %D
nop

incw %D

LOOP3:
	leaw $1, %A
	movw %D, (%A)
