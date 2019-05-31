; 0 - EQ
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

; End
