; Elementos de Sistemas : 2018a
; Rafael Corsi
; Hardware : Z0.1
;
; Data :
;    - Dez 2018
; Descrição :
;    - Movimentação de dados da memoria RAM
;
; tmp    = RAM[0]
; RAM[0] = RAM[1]
; RAM[1] = tmp
; RAM[3] = 1

leaw $1, %A
movw (%A), %D
leaw %0, %A
movw (%A), %S
movw %D, (%A)
leaw $1, %A
movw %S, (%A)
leaw $3, %A
movw %A, %D
leaw $1, %A
movw %A, %D
leaw $3, %A
movw %D, (%A)
