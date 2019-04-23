; Jose Ramos |  Student ID: 00299444
; Lab: CHAPTER 5 LABS (INDIRECT ADDRESSING  FSR)
; March 14 of 2019
; LAB1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Write code that stores the numbers 1 through 10 in Registers A – 13.
;;  Use the file select registers to loop through and increment the FRS's 
;;  (file select registers). Make sure to include a register that will 
;;  store a value to Decrement and test using the BNZ mnemonic. Save it as 
;;  Chapter5_Lab1_YourName.asm
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


COUNTER EQU 0X00			; Creating a label for COUNTER with the value of 0x00
	
	ORG   0020			; Starting the program at 20
	MOVLW 0X0A			; Copying 0x0A into WREG
	MOVWF COUNTER			; Copying WREG into counter register.
	
	MOVLW 0X13			; Copying the literal 0x13 into WREG.
	MOVWF FSR0L			; Copying the literal in WREG into FSR0.
	
LOOP:	

	MOVFF COUNTER,POSTDEC0		; Copying the value in COUNTER into the pointer of FSR0 and increasing FSR0 by 1.
	DECF  COUNTER,F			; Decreasing the value in counter by 1.
	BNZ   LOOP			; If the flag Z in STATUS register is not 0 go to loop.

	SLEEP 				; Going into standby mode.
	END				; Shutting down the PIC18.