; Jose Ramos |  Student ID: 00299444
; Lab: Chapter 3 Labs Part1
; Feb 19 of 2019

	BYTE1 EQU 0X04	; Creating a label for a literal value
	BYTE2 EQU 0X08	; Creating a label for a literal value
	
	REG1  EQU 0X01	; Creating a label for a register 0x01
	REG2  EQU 0X03	; Creating a label for a register 0x03
	REG3  EQU 0X05	; Creating a label for a register 0x05
	
	MOVLW BYTE1	; Copying the literal value of BYTE1 to the WREG
	MOVWF REG1	; Copying the value of WREG to REG1
	ADDLW BYTE2	; Adding the value of BYTE2 to the WREG
	MOVWF REG2	; Copying the value in WREG to REG2