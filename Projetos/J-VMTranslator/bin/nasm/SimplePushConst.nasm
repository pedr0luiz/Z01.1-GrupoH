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

; 1 - PUSH constant 9
leaw $SP,%A 

movw (%A),%D 

leaw $9,%A 

movw %A,%S 

movw %D,%A 

movw %S,(%A) 

incw %D 

leaw $SP,%A 

movw %D,(%A) 

; End
