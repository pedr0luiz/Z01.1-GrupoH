leaw $5, %A
movw (%A), %D
leaw $1, %A
andw %A, %D,%S
leaw $falso, %A
jg %S
nop
verdade:
   movw $1, %S
   leaw $RESULTADO, %A
   movw %S, (%A)
   leaw $end, %A
   jmp
   nop
falso:
   movw $0, %S
   leaw $RESULTADO, %A
   movw %S, (%A)
end:
   leaw $RESULTADO, %A
   movw (%A), %S
   leaw $0, %A
   movw %S, (%A)
