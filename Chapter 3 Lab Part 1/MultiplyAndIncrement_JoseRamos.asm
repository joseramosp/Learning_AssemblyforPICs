; Jose Ramos |  Student ID: 00299444
; Lab: Chapter 3 Labs Part1
; Feb 19 of 2019

	REG0  EQU  0x00		; Creating a label for REG0 = 0x00.
	REG1  EQU  0x01 	; Creating a label for REG1 = 0x01.
	REG2  EQU  0x02		; Creating a label for REG2 = 0x02.
	REG4  EQU  0x04 	; Creating a label for REG4 = 0x04.

	MOVLW 0X02		; Copying the value of 2 into the WREG.
	MOVWF REG0		; Copying the value in WREG into REG0.
	MOVLW 0X03		; Copying the value of 3 into the WREG.
	MOVWF REG1		; Copying the value in WREG into the REG1.
	MULWF REG0		; Multiplying the values in WREG and REG0.
	MOVFF PRODL, REG2	; Copying the value in the register PRODL into REG2.
	INCF  REG0, F 		; Increasing the value of REG0 by 1 and and storing the result in REG0.
	MOVFF REG0, WREG	; Copying the value in REG0 into WREG.
	MULWF REG1		; Multiplying WREG and REG1.
	MOVFF PRODL, REG4	; Copying the register PRODL into the REG4.

	; REG2 ended with the value of 6, as the result of multiplying 2 and 3 in line 14. 
	; REG4 ended with the value of 9, as the result of multiplying REG0 (after being increased by 1) and REG1.