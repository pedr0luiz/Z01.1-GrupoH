; ####################################################################
; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
; Copia o valor de RAM[1] para RAM[0] deixando o valor sempre positivo.
; ####################################################################

leaw $1, %A
movw (%A), %D
leaw $FIM, %A
jge %D
nop
negw %D
FIM:
leaw $0, %A
movw %D, (%A)
