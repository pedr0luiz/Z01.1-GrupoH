; 0 - PUSH constant 17
leaw $SP,%A 

movw (%A),%D 

leaw $17,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 1 - PUSH constant 17
leaw $SP,%A 

movw (%A),%D 

leaw $17,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 2 - EQ
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

; 3 - PUSH constant 17
leaw $SP,%A 

movw (%A),%D 

leaw $17,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 4 - PUSH constant 16
leaw $SP,%A 

movw (%A),%D 

leaw $16,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 5 - EQ
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

; 6 - PUSH constant 16
leaw $SP,%A 

movw (%A),%D 

leaw $16,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 7 - PUSH constant 17
leaw $SP,%A 

movw (%A),%D 

leaw $17,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 8 - EQ
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

; 9 - PUSH constant 892
leaw $SP,%A 

movw (%A),%D 

leaw $892,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 10 - PUSH constant 891
leaw $SP,%A 

movw (%A),%D 

leaw $891,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 11 - LT
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

jl %D 

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

; 12 - PUSH constant 891
leaw $SP,%A 

movw (%A),%D 

leaw $891,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 13 - PUSH constant 892
leaw $SP,%A 

movw (%A),%D 

leaw $892,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 14 - LT
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

jl %D 

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

; 15 - PUSH constant 891
leaw $SP,%A 

movw (%A),%D 

leaw $891,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 16 - PUSH constant 891
leaw $SP,%A 

movw (%A),%D 

leaw $891,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 17 - LT
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

jl %D 

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

; 18 - PUSH constant 32767
leaw $SP,%A 

movw (%A),%D 

leaw $32767,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 19 - PUSH constant 32766
leaw $SP,%A 

movw (%A),%D 

leaw $32766,%A 

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

; 21 - PUSH constant 32766
leaw $SP,%A 

movw (%A),%D 

leaw $32766,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 22 - PUSH constant 32767
leaw $SP,%A 

movw (%A),%D 

leaw $32767,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 23 - GT
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

; 24 - PUSH constant 32766
leaw $SP,%A 

movw (%A),%D 

leaw $32766,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 25 - PUSH constant 32766
leaw $SP,%A 

movw (%A),%D 

leaw $32766,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 26 - GT
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

; 27 - PUSH constant 57
leaw $SP,%A 

movw (%A),%D 

leaw $57,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 28 - PUSH constant 31
leaw $SP,%A 

movw (%A),%D 

leaw $31,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 29 - PUSH constant 53
leaw $SP,%A 

movw (%A),%D 

leaw $53,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 30 - ADD
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

; 31 - PUSH constant 112
leaw $SP,%A 

movw (%A),%D 

leaw $112,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 32 - SUB
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

; 33 - NEG
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

negw %D 

movw %D,(%A) 

incw %A 

movw %A,%D 

leaw $SP,%A 

movw %D,(%A) 

; 34 - AND
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

decw %A 

movw (%A),%S 

andw %S,%D,%D 

movw %D,(%A) 

incw %A 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A) 

; 35 - PUSH constant 82
leaw $SP,%A 

movw (%A),%D 

leaw $82,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 36 - OR
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

decw %A 

movw (%A),%S 

orw %S,%D,%D 

movw %D,(%A) 

incw %A 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A) 

; 37 - NOT
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

notw %D 

movw %D,(%A) 

incw %A 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A) 

; End
