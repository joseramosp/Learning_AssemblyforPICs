; Jose Ramos |  Student ID: 00299444
; Lab: CHAPTER 5 LABS (INDIRECT ADDRESSING  FSR)
; March 14 of 2019
; LAB2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Write code that stores the following numbers 0, 2, 4, 6, 8, 10 in 
;;  registers A-F. The numbers should be produced using the MULLW or MULWF 
;;  mnemonics and you should use indirect addressing increment and loop 
;;  through the FRS's. Make sure to include a register that will store a 
;;  value to Decrement and test using the BNZ mnemonic. Chapter5_Lab2_Yourname.asm
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


COUNTER EQU 0X00			; Creating a label for COUNTER with the value of 0x00
	
	ORG   0020			; Starting the program at 20
	MOVLW 0X05			; Copying 0x05 into WREG
	MOVWF COUNTER			; Copying WREG into counter register.
	
	MOVLW 0X0F			; Copying the literal 0x0F into WREG.
	MOVWF FSR0L			; Copying the literal in WREG into FSR0.
	
LOOP:	
	MOVFF COUNTER, WREG		; Copying the value in COUNTER into WREG.
	MULLW 2				; Multiplying by 2 the value in WREG.
	MOVFF PRODL, POSTDEC0		; Copying the value in PRODL into the pointer of FSR0 and decreasing by 1 FSR0.
	DECF  COUNTER,F			; Decreasing the value in counter by 1.
	BNZ   LOOP			; If the flag Z in STATUS register is not 0 go to loop.

	SLEEP 				; Going into standby mode.
	END				; Shutting down the PIC18.