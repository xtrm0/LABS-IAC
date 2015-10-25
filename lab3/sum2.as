; Programa sum2.as
; Soma 2 numeros de 32 bits (o P3 tem 16 bits, logo e preciso o carry)

                ORIG    8000h
Num1            STR     8091h, 1201h
Num2            STR     8061h, 4f01h
Soma            TAB     2

                ORIG    0000h
Inicio:		MOV	R1, Num1
		MOV	R2, Num2
		MOV     R3, Soma
		MOV	R4, M[R1]
		ADD	R4, M[R2]
		MOV	M[R3], R4

		MOV	R4, M[R1+1]
		ADDC	R4, M[R2+1]
		MOV	M[R3+1], R4

Fim:            BR      Fim
