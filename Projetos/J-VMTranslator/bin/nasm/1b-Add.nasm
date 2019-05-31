; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 5
leaw $SP,%A 

movw (%A),%D 

leaw $5,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 2 - PUSH constant 9
leaw $SP,%A 

movw (%A),%D 

leaw $9,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 3 - ADD
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

decw %A 

movw (%A),%S 

addw %D,%S,%D 

movw %D,(%A) 

incw %A 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A) 

; 4 - POP temp 0
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $5,%A 

movw %A,%S 

leaw $0,%A 

addw %S,%A,%A 

movw %D,(%A) 

; End
