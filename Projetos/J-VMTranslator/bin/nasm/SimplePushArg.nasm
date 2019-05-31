; 0 - PUSH argument 0
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

; 1 - PUSH argument 1
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

; 2 - PUSH argument 2
leaw $2,%A 

movw (%A),%D 

leaw $2,%A 

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

; End
