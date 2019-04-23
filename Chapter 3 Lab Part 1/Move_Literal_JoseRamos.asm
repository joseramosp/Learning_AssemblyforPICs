; Jose Ramos |  Student ID: 00299444
; Lab: Chapter 3 Labs Part1
; Feb 19 of 2019

	REG1  EQU  0X01		; Creating a label for the register 0x01
	REG2  EQU  0X03		; Creating a label for the register 0x03
	REG3  EQU  0X05		; Creating a label for the register 0x03
	
	VAL  EQU  0X01		; Label for a literal value.

	MOVLW VAL		; The value of VAL is going to be copied on the WREG
	MOVWF REG1		; The value in the WREG is going to be copied in REG1
	MOVFF REG1, REG2	; Copying the value from REG1 to REG2. This instruction will take 2 clock cycle
	MOVFF REG2, REG3	; Copying the value from REG2 to REG3. This instruction will take 2 clock cycle
	
	;----- Results: --------------------------
	
	;000000  0E01    	MOVLW 0x01
	;000002  6E01    	MOVWF 0x001,A
	;000004  C001    	MOVFF 0x001,0x003
	;000006  F003
	;000008  C003    	MOVFF 0x003,0x005
	;00000A  F005