; Jose Ramos |  Student ID: 00299444
; Lab: 4.5 MPLAB IDE and OTHER New COMMANDS!
; March 7 of 2019

	REG0     EQU 0X00	; Creating a label called REG0
	COUNTER  EQU 0X01	; Creating a label called COUNTER

	CLRF    TRISA		; Cleaning PORTA register
	MOVLW 	0XFF		; Copying the value 0XFF to WREG
	MOVWF   COUNTER		; Copying WREG into COUNTER register

; Start of the loop
LOOP:	INCF  REG0,F	; Incrementing REG0 by 1
	MOVFF REG0,PORTA	; Copying REG0 into PORTA
	DECF  COUNTER,F		; Decrementing COUNTER register by 1
	BNZ   LOOP		    ; If Z flag of STATUS register is not on will go to loop
;End of the loop

	SLEEP			    ; Going into stand by mode
	END			        ; Shutting down the PIC18
