; Jose Ramos |  Student ID: 00299444
; Lab: Chapter 3 Labs Part1
; Feb 19 of 2019

	REG0  EQU  0x00		; Creating a label for REG0 = 0x00.
	REG1  EQU  0x01 	; Creating a label for REG1 = 0x01.

	MOVLW 0x05		; Moving the value of 0x05 to the WREG.
	XORLW 0x03		; Using the XOR operator with the value in WREG and 0x03 and saving it in WREG.
	MOVWF REG0		; Copying the value in WREG to REG0.
	MOVLW 0x02		; Moving the value of 0x02 to the WREG.
	MOVWF REG1		; Copying the value in the WREG to the REG1.
	MOVLW 0x0A		; Moving the value of 10 in hex to the WREG.
	XORWF REG1,F 		; Using the XOR operator with the values in WREG and REG1, and storing the result in the REG1.

	; REG0 ended with the value of 6 as the result of the XOR operation between 5 and 3.
	; REG1 ended with the value of 8 as the result of the XOR operation between 10 and 2.