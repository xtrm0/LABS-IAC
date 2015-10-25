; Programa decomp.as

                ORIG    8000h
DadosIniciais   STR     1234h, 5678h
NumDados        WORD    2
DadosFinais     TAB     8

                ORIG    0000h
Inicio:         MOV     R1, R0

Ciclo:          CMP     R1, M[NumDados]
                BR.Z    Fim
                MOV     R2, R0
                MOV     R4, DadosIniciais ;R4 = 8000h
                ADD     R4, R1 ; R4 += i
                MOV     R3, M[R4] ; R3 = M[R4]
CicloB:         MOV     R4, R3; R4 = 0001
                MOV     R5, 000fh; R5 000f
                AND     R5, R4 ;R5 = 0002h
                MOV     R6, R1
                MOV     R7, 4
                MUL     R7, R6
                MOV     R4, 4
                SUB     R4, R2
                ADD     R6, R4
                MOV     R4, NumDados
                ADD     R6, R4
                MOV     M[R6], R5
                SHR     R3, 4
                INC     R2
                CMP     R2, 4
                BR.NZ   CicloB

                INC     R1
                BR      Ciclo

Fim:            BR      Fim
