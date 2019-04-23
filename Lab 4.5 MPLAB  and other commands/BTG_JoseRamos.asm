; Jose Ramos |  Student ID: 00299444
; Lab: 4.5 MPLAB IDE and OTHER New COMMANDS!
; March 7 of 2019

REG0 EQU 0X00 		; Creating a label for Register 0x00 

	MOVLW 0X0F		; Copying the value 0x0F into W register
	MOVWF REG0		; Copying the value in WREG into REG0
	BTG	  REG0,7	; Using the command BTG on the bit 7 of the REG0. It was 0 now is 1. value of REG0 is now 0x8F.
	BTG	  REG0,7	; Using the command BTG on the bit 7 of the REG0. It was 1 now is 0. value of REG0 is now 0x0F.

	SLEEP 			; Going into standby mode 
	END				; Shutting down the PIC18

; I selected this cammand because it is interesting that I can change the value of a single bit without having to use MOVLW and MOVWF.
; It can be interesting to use this command to change the value of some bit of PORTA in some program.