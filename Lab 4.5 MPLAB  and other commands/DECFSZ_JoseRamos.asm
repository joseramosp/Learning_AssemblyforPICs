; Jose Ramos |  Student ID: 00299444
; Lab: 4.5 MPLAB IDE and OTHER New COMMANDS!
; March 7 of 2019

REG0 EQU 0X00		; Creating a label for the register 0x00

	MOVLW 0X08		; Copying the literal value 0x08 into WREG
	MOVWF REG0		; Copying the value in WREG into REG0

Loop: DECFSZ REG0,F ; Decrementing the value in REG0 by 1 and skipping the next line if REG0 equal 0
	  GOTO Loop		; Return the program to the top of the loop

	  SLEEP 		; Going into standby mode
	  END			; Shutting down the PIC18

; I selected the command DECFSZ because is similar to BNZ.
; I learned that one of the main differences is that DECFSZ does not affect or check the STATUS register.