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

; 2 - POP local 0
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $1,%A 

movw (%A),%S 

leaw $0,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 3 - PUSH argument 1
leaw $2,%A 

movw (%A),%D 

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

; 4 - POP local 1
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $1,%A 

movw (%A),%S 

leaw $1,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 5 - PUSH argument 0
leaw $2,%A 

movw (%A),%D 

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

; 6 - PUSH argument 1
leaw $2,%A 

movw (%A),%D 

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

; 8 - POP argument 2
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $2,%A 

movw (%A),%S 

leaw $2,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 9 - POP argument 1
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $2,%A 

movw (%A),%S 

leaw $1,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 10 - POP argument 0
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $2,%A 

movw (%A),%S 

leaw $0,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 11 - PUSH local 0
leaw $1,%A 

movw (%A),%D 

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

; 12 - ADD
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

; 13 - POP local 0
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $1,%A 

movw (%A),%S 

leaw $0,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 14 - PUSH local 1
leaw $1,%A 

movw (%A),%D 

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

; 15 - PUSH constant 1
leaw $SP,%A 

movw (%A),%D 

leaw $1,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 16 - SUB
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

; 17 - POP local 1
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $1,%A 

movw (%A),%S 

leaw $1,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 18 - PUSH local 1
leaw $1,%A 

movw (%A),%D 

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

; 19 - PUSH constant 0
leaw $SP,%A 

movw (%A),%D 

leaw $0,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 20 - GT
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

; 23 - PUSH local 0
leaw $1,%A 

movw (%A),%D 

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

; 26 - PUSH constant 0
leaw $SP,%A 

movw (%A),%D 

leaw $0,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 27 - POP local 0
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $1,%A 

movw (%A),%S 

leaw $0,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 28 - PUSH argument 1
leaw $2,%A 

movw (%A),%D 

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

; 29 - POP local 1
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $1,%A 

movw (%A),%S 

leaw $1,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 30 - PUSH constant 0
leaw $SP,%A 

movw (%A),%D 

leaw $0,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 31 - PUSH local 1
leaw $1,%A 

movw (%A),%D 

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

; 32 - EQ
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

je %D 

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

; 35 - PUSH local 0
leaw $1,%A 

movw (%A),%D 

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

; 36 - PUSH argument 0
leaw $2,%A 

movw (%A),%D 

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

; 37 - ADD
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

; 38 - POP local 0
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $1,%A 

movw (%A),%S 

leaw $0,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 39 - PUSH local 1
leaw $1,%A 

movw (%A),%D 

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

; 40 - PUSH constant 1
leaw $SP,%A 

movw (%A),%D 

leaw $1,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 41 - SUB
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

; 42 - POP local 1
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $1,%A 

movw (%A),%S 

leaw $1,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 44 - PUSH local 0
leaw $1,%A 

movw (%A),%D 

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

; 47 - PUSH constant 3
leaw $SP,%A 

movw (%A),%D 

leaw $3,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 48 - PUSH constant 3
leaw $SP,%A 

movw (%A),%D 

leaw $3,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 50 - POP argument 2
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $2,%A 

movw (%A),%S 

leaw $2,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 51 - POP argument 1
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $2,%A 

movw (%A),%S 

leaw $1,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 52 - POP argument 0
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $2,%A 

movw (%A),%S 

leaw $0,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 53 - POP temp 2
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

leaw $2,%A 

addw %S,%A,%A 

movw %D,(%A) 

; End
