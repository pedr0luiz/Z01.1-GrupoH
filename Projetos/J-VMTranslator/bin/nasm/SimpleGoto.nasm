; 0 - PUSH constant 5
leaw $SP,%A 

movw (%A),%D 

leaw $5,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 2 - PUSH constant 3
leaw $SP,%A 

movw (%A),%D 

leaw $3,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; 3 - POP temp 0
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
