; Jose Ramos |  Student ID: 00299444
; Lab: Chapter 3 Labs Part2
; March 3 of 2019

	REG0  EQU  0X00		; Creating label for the called REG0.
	
	MOVLW 0XAA		; Copying the value 0XAA into WREG.
	MOVWF REG0		; Copying the value in WREG to REG0.
	COMF  REG0,F		; Using the instruction COMF on the REG0 and saving the result in REG0.
	
	SLEEP 			; Going into standby mode.
	END			; Shutting down the PIC18.

	; The COMF instruction returns the complent of the value in a register
	; Basically, it will convert 0's into 1 and 1's into 0. 
	; STATUS REGISTER HAS NO FLAGS ACTIVE AT THE END OF THE PROGRAM.