; 0 - PUSH constant 10
leaw $SP,%A 

movw (%A),%D 

leaw $10,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 1 - PUSH local 0
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

; 3 - PUSH constant 21
leaw $SP,%A 

movw (%A),%D 

leaw $21,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 4 - PUSH constant 22
leaw $SP,%A 

movw (%A),%D 

leaw $22,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 5 - POP argument 2
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

; 6 - POP argument 1
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

; 7 - PUSH constant 36
leaw $SP,%A 

movw (%A),%D 

leaw $36,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 8 - POP this 6
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $3,%A 

movw (%A),%S 

leaw $6,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 9 - PUSH constant 42
leaw $SP,%A 

movw (%A),%D 

leaw $42,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 10 - PUSH constant 45
leaw $SP,%A 

movw (%A),%D 

leaw $45,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 11 - POP that 5
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $4,%A 

movw (%A),%S 

leaw $5,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 12 - POP that 2
leaw $SP,%A 

movw (%A),%D 

movw %D,%A 

decw %A 

movw (%A),%D 

movw %A,%S 

leaw $SP,%A 

movw %S,(%A)

leaw $4,%A 

movw (%A),%S 

leaw $2,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 13 - PUSH constant 510
leaw $SP,%A 

movw (%A),%D 

leaw $510,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 14 - POP temp 6
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

leaw $6,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 15 - PUSH local 0
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

; 16 - PUSH that 5
leaw $4,%A 

movw (%A),%D 

leaw $5,%A 

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

; 17 - ADD
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

; 18 - PUSH argument 1
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

; 19 - SUB
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

; 20 - PUSH this 6
leaw $3,%A 

movw (%A),%D 

leaw $6,%A 

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

; 21 - PUSH this 6
leaw $3,%A 

movw (%A),%D 

leaw $6,%A 

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

; 22 - ADD
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

; 23 - SUB
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

; 24 - PUSH temp 6
leaw $5,%A 

movw %A,%D 

leaw $6,%A 

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

; 25 - ADD
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

; End
