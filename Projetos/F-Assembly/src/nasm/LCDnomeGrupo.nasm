; Arquivo: LCDnomeGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD o nome do grupo

;letra H
leaw $61455, %A
movw %A, %D

leaw $16504, %A
movw %D, (%A)

leaw $16524, %A
movw %D, (%A)

leaw $16544, %A
movw %D, (%A)

leaw $16564, %A
movw %D, (%A)

leaw $16584, %A
movw %D, (%A)

leaw $16604, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16624, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16644, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16664, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16684, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D

leaw $16704, %A
movw %D, (%A)

leaw $16724, %A
movw %D, (%A)

leaw $16744, %A
movw %D, (%A)

leaw $16764, %A
movw %D, (%A)

leaw $16784, %A
movw %D, (%A)

leaw $16804, %A
movw %D, (%A)

;letra A

leaw $65535, %A
movw %A, %D
leaw $16505, %A
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16525, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16545, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16565, %A
movw %D, (%A)

leaw $16585, %A
movw %D, (%A)

leaw $16605, %A
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16625, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16645, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16665, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16685, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D

leaw $16705, %A
movw %D, (%A)

leaw $16725, %A
movw %D, (%A)

leaw $16745, %A
movw %D, (%A)

leaw $16765, %A
movw %D, (%A)

leaw $16785, %A
movw %D, (%A)

leaw $16805, %A
movw %D, (%A)

;letra R

leaw $65535, %A
movw %A, %D
leaw $16506, %A
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16526, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16546, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16566, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16586, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16606, %A
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16626, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16646, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16666, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16686, %A
movw %D, (%A)

leaw $511, %A
movw %A, %D
leaw $16706, %A
movw %D, (%A)

leaw $1007, %A
movw %A, %D
leaw $16726, %A
movw %D, (%A)

leaw $1999, %A
movw %A, %D
leaw $16746, %A
movw %D, (%A)

leaw $3983, %A
movw %A, %D
leaw $16766, %A
movw %D, (%A)

leaw $7951, %A
movw %A, %D
leaw $16786, %A
movw %D, (%A)

leaw $15887, %A
movw %A, %D
leaw $16806, %A
movw %D, (%A)

;letra D

leaw $1023, %A
movw %A, %D
leaw $16507, %A
movw %D, (%A)

leaw $1023, %A
movw %A, %D
leaw $16527, %A
movw %D, (%A)

leaw $3087, %A
movw %A, %D
leaw $16547, %A
movw %D, (%A)

leaw $7183, %A
movw %A, %D
leaw $16567, %A
movw %D, (%A)

leaw $15375, %A
movw %A, %D
leaw $16587, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16607, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16627, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16647, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16667, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16687, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16707, %A
movw %D, (%A)

leaw $15375, %A
movw %A, %D
leaw $16727, %A
movw %D, (%A)

leaw $7183, %A
movw %A, %D
leaw $16747, %A
movw %D, (%A)

leaw $3087, %A
movw %A, %D
leaw $16767, %A
movw %D, (%A)

leaw $1023, %A
movw %A, %D
leaw $16787, %A
movw %D, (%A)

leaw $1023, %A
movw %A, %D
leaw $16807, %A
movw %D, (%A)

;letra W

leaw $57351, %A
movw %A, %D
leaw $16508, %A
movw %D, (%A)

leaw $57351, %A
movw %A, %D
leaw $16528, %A
movw %D, (%A)

leaw $57351, %A
movw %A, %D
leaw $16548, %A
movw %D, (%A)

leaw $57351, %A
movw %A, %D
leaw $16568, %A
movw %D, (%A)

leaw $29070, %A
movw %A, %D
leaw $16588, %A
movw %D, (%A)

leaw $29070, %A
movw %A, %D
leaw $16608, %A
movw %D, (%A)

leaw $29070, %A
movw %A, %D
leaw $16628, %A
movw %D, (%A)

leaw $29070, %A
movw %A, %D
leaw $16648, %A
movw %D, (%A)

leaw $14940, %A
movw %A, %D
leaw $16668, %A
movw %D, (%A)

leaw $14940, %A
movw %A, %D
leaw $16688, %A
movw %D, (%A)

leaw $14940, %A
movw %A, %D
leaw $16708, %A
movw %D, (%A)

leaw $14940, %A
movw %A, %D
leaw $16728, %A
movw %D, (%A)

leaw $7800, %A
movw %A, %D
leaw $16748, %A
movw %D, (%A)

leaw $7800, %A
movw %A, %D
leaw $16768, %A
movw %D, (%A)

leaw $7800, %A
movw %A, %D
leaw $16788, %A
movw %D, (%A)

leaw $7800, %A
movw %A, %D
leaw $16808, %A
movw %D, (%A)

;letra A

leaw $65535, %A
movw %A, %D
leaw $16509, %A
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16529, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16549, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16569, %A
movw %D, (%A)

leaw $16589, %A
movw %D, (%A)

leaw $16609, %A
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16629, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16649, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16669, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16689, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D

leaw $16709, %A
movw %D, (%A)

leaw $16729, %A
movw %D, (%A)

leaw $16749, %A
movw %D, (%A)

leaw $16769, %A
movw %D, (%A)

leaw $16789, %A
movw %D, (%A)

leaw $16809, %A
movw %D, (%A)

;letra R

leaw $65535, %A
movw %A, %D
leaw $16510, %A
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16530, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16550, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16570, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16590, %A
movw %D, (%A)

leaw $61455, %A
movw %A, %D
leaw $16610, %A
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16630, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16650, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16670, %A
movw %D, (%A)

leaw $65535 ,%A
movw %A, %D
leaw $16690, %A
movw %D, (%A)

leaw $511, %A
movw %A, %D
leaw $16710, %A
movw %D, (%A)

leaw $1007, %A
movw %A, %D
leaw $16730, %A
movw %D, (%A)

leaw $1999, %A
movw %A, %D
leaw $16750, %A
movw %D, (%A)

leaw $3983, %A
movw %A, %D
leaw $16770, %A
movw %D, (%A)

leaw $7951, %A
movw %A, %D
leaw $16790, %A
movw %D, (%A)

leaw $15887, %A
movw %A, %D
leaw $16810, %A
movw %D, (%A)

;letra E

leaw $65535, %A
movw %A, %D
leaw $16511, %A
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16531, %A
movw %D, (%A)

leaw $15, %A
movw %A, %D
leaw $16551, %A
movw %D, (%A)

leaw $15, %A
movw %A, %D
leaw $16571, %A
movw %D, (%A)

leaw $15, %A
movw %A, %D
leaw $16591, %A
movw %D, (%A)

leaw $15, %A
movw %A, %D
leaw $16611, %A
movw %D, (%A)

leaw $15, %A
movw %A, %D
leaw $16631, %A
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16651, %A
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16671, %A
movw %D, (%A)

leaw $15, %A
movw %A, %D
leaw $16691, %A
movw %D, (%A)

leaw $15, %A
movw %A, %D
leaw $16711, %A
movw %D, (%A)

leaw $15, %A
movw %A, %D
leaw $16731, %A
movw %D, (%A)

leaw $15, %A
movw %A, %D
leaw $16751, %A
movw %D, (%A)

leaw $15, %A
movw %A, %D
leaw $16771, %A
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16791, %A
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16811, %A
movw %D, (%A)

