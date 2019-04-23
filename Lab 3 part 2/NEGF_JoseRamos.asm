; Jose Ramos |  Student ID: 00299444
; Lab: Chapter 3 Labs Part2
; March 3 of 2019
	
	REG0  EQU   0X00  ; Creating label for the called REG0 

	MOVLW 0X0F	  ; Copying the value 0X0F into WREG
	NEGF  WREG	  ; Using the intruction NEGF on REG0
	MOVWF REG0	  ; Copying the value in WREG to REG0
	
	SLEEP 		  ; Going into standby mode 
	END		  ; Shutting down the PIC18

	; The instruction NEGF is converting a value in a register to
	; negative if the value is positve, OR positive if the value is negative.
	; (LIKE MULTIPLY BY -1 THE VALUE IN THE REGISTER) and save it in the same register.
	; STATUS REGISTER HAS THE FLAG N IN 1