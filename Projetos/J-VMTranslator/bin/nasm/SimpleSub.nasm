; 0 - SUB
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

; End
