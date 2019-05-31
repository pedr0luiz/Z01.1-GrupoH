; 0 - PUSH local 0
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

; 1 - PUSH local 1
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

; 2 - PUSH local 2
leaw $1,%A 

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
