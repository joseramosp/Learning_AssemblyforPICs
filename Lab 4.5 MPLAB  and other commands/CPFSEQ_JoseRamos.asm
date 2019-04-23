; Jose Ramos |  Student ID: 00299444
; Lab: 4.5 MPLAB IDE and OTHER New COMMANDS!
; March 7 of 2019

COUNT EQU 0X00			  ; Creating a label for the register 0x00
REG1  EQU 0X01			  ; Creating a label for the register 0x01

	MOVLW 0X08			  ; Copying the literal value 0x08 into WREG
	MOVWF REG1			  ; Copying the value in WREG into REG1

Loop: INCF   COUNT,1	  ; Increasing the value of count by one.
	  CPFSEQ COUNT,REG1   ; If the value of COUNT is equal to REG1, the next line is going to be skipped.
	  GOTO   Loop		  ; Return the program to the top of the loop

	  SLEEP				  ; Going into standby mode
	  END				  ; Shutting down the PIC18

; I selected the command CPFSEQ because I wanted the program to stop when COUNT and REG1 have the same value.
