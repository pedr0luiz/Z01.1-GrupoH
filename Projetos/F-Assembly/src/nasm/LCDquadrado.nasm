; Arquivo: LCDQuadrado.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Desenhe um quadro no LCD
;  - Valide no hardawre
;  - Bata uma foto!


leaw $65535, %A
movw %A, %D

leaw $17300, %A
movw %A, %S

LOOP:
	leaw $65535, %A
	movw %A, %D
	movw %S, %A
	movw %D, (%A)
	leaw $20, %A
	addw %A, %S, %S

leaw $17620, %A
subw %A, %S, %D
leaw $LOOP, %A
jg %D
nop

