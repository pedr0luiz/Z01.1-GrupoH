; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 0
leaw $SP,%A 

movw (%A),%D 

leaw $0,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 2 - POP temp 0
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

; 3 - PUSH constant 15
leaw $SP,%A 

movw (%A),%D 

leaw $15,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 4 - POP temp 1
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

leaw $1,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 5 - PUSH temp 1
leaw $5,%A 

movw %A,%D 

leaw $1,%A 

addw %D,%A,%D 

movw %D,%A 

movw (%A),%D 

leaw $SP,%A 

movw (%A),%S 

movw %S,%A 

movw %D,(%A) 

incw %A 

movw %A,%S

leaw $SP,%A 

movw %S,(%A) 

; 6 - PUSH constant 5
leaw $SP,%A 

movw (%A),%D 

leaw $5,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 7 - SUB
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

decw %A 

movw (%A),%S 

subw %S,%D,%D 

movw %D,(%A) 

incw %A 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A) 

; 8 - POP temp 1
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

leaw $1,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 9 - PUSH temp 0
leaw $5,%A 

movw %A,%D 

leaw $0,%A 

addw %D,%A,%D 

movw %D,%A 

movw (%A),%D 

leaw $SP,%A 

movw (%A),%S 

movw %S,%A 

movw %D,(%A) 

incw %A 

movw %A,%S

leaw $SP,%A 

movw %S,(%A) 

; 10 - PUSH constant 1
leaw $SP,%A 

movw (%A),%D 

leaw $1,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 11 - ADD
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

; 12 - POP temp 0
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

; 13 - PUSH temp 1
leaw $5,%A 

movw %A,%D 

leaw $1,%A 

addw %D,%A,%D 

movw %D,%A 

movw (%A),%D 

leaw $SP,%A 

movw (%A),%S 

movw %S,%A 

movw %D,(%A) 

incw %A 

movw %A,%S

leaw $SP,%A 

movw %S,(%A) 

; 14 - PUSH constant 0
leaw $SP,%A 

movw (%A),%D 

leaw $0,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 15 - GT
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

decw %A 

movw (%A),%S 

subw %S,%D,%D 

movw %A,%S 

leaw $TRUE,%A 

jg %D 

nop 

leaw $FALSE,%A 

jmp 

nop 

TRUE: 

leaw $0,%A 

notw %A 

movw %A,%D 

movw %S, %A 

movw %D, (%A) 

leaw $END,%A 

jmp 

nop 

FALSE: 

leaw $0,%A 

movw %A,%D 

movw %S, %A 

movw %D, (%A) 

END: 

incw %S 

leaw $SP,%A 

movw %S,(%A) 

; End