; 0 - NEG
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

; End
