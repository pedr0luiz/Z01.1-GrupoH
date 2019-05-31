; 0 - POP pointer 0
leaw $SP,%A 

movw (%A),%D 

decw %D 

movw %D,%A 

movw (%A),%S 

leaw $3,%A
movw %S,(%A) 

leaw $SP,%A 

movw %D,(%A) 

; 1 - POP pointer 1
leaw $SP,%A 

movw (%A),%D 

decw %D 

movw %D,%A 

movw (%A),%S 

leaw $4,%A
movw %S,(%A) 

leaw $SP,%A 

movw %D,(%A) 

; End
