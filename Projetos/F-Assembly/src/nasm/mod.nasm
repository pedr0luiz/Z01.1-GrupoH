; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
;  Encontra o resto da divisão entre RAM[2] e RAM[1] e o salva em RAM[0].

leaw $1, %A
movw (%A), %D
leaw $3, %A
movw %D, (%A)

leaw $2, %A
movw (%A), %S

LOOP:
	leaw $3, %A
	movw (%A), %D
	subw %D, %S, (%A)

leaw $3, %A
subw (%A), %S, %D
leaw $LOOP, %A
jge %D
nop

leaw $3, %A
movw (%A), %D
leaw $0, %A
movw %D, (%A)
