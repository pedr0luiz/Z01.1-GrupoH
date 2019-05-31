; 0 - POP this 0
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

leaw $0,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 1 - POP this 1
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

leaw $1,%A 

addw %S,%A,%A 

movw %D,(%A) 

; 2 - POP this 2
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

leaw $2,%A 

addw %S,%A,%A 

movw %D,(%A) 

; End
