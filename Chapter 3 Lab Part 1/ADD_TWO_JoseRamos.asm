; Jose Ramos |  Student ID: 00299444
; Lab: Chapter 3 Labs Part1
; Feb 19 of 2019

	MOVLW  0x05	; Copying the literal value of 5 to the WREG
	ADDLW  0x05	; Adding 5 to the WREG.
	ADDWF  0x00,1	; Adding the value in WREG to the register 0x00.
	