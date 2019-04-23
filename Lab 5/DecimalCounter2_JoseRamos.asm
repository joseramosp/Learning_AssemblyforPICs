; Jose Ramos |  Student ID: 00299444
; Lab: CHAPTER 5 LABS (INDIRECT ADDRESSING  FSR)
; March 14 of 2019
; LAB3
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Update your Decimal Counter clock to store the bit patterns for the 
;;  LED in registers A-13. Use indirect addressing to loop through and 
;;  move the bit patterns to the appropriate output ports. Make sure to 
;;  include a register that will store a value to Decrement and test using 
;;  the BNZ mnemonic. Save it as DecimalCounter2_YourName.asm Use PIC18 
;;  Simulator software to assemble and run your code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	COUNTER EQU 0X00	; Creating a label for COUNTER with the value of 0x00
	NUM0  EQU B'00111111'	; Creating a label for the representation of 0 in a 7seg in binary 
	NUM1  EQU B'00000110'	; Creating a label for the representation of 1 in a 7seg in binary
	NUM2  EQU B'01011011'	; Creating a label for the representation of 2 in a 7seg in binary
	NUM3  EQU B'01001111'	; Creating a label for the representation of 3 in a 7seg in binary
	NUM4  EQU B'01100110'	; Creating a label for the representation of 4 in a 7seg in binary
	NUM5  EQU B'01101101'	; Creating a label for the representation of 5 in a 7seg in binary
	NUM6  EQU B'01111101'	; Creating a label for the representation of 6 in a 7seg in binary
	NUM7  EQU B'00000111'	; Creating a label for the representation of 7 in a 7seg in binary
	NUM8  EQU B'01111111'	; Creating a label for the representation of 8 in a 7seg in binary
	NUM9  EQU B'01100111'	; Creating a label for the representation of 9 in a 7seg in binary
	
	ORG   0020	; Starting the program at 20
	
	CLRF TRISA	;CLREAR PORTA
	
	MOVLW NUM0	; Copying the literal NUM0 to WREG.
	MOVWF 0X0A	; Copying the value in WREG to 0X0A.
	
	MOVLW NUM1	; Copying the literal NUM1 to WREG. 
	MOVWF 0X0B	; Copying the value in WREG to 0X0AB.
	
	MOVLW NUM2	; Copying the literal NUM2 to WREG.
	MOVWF 0X0C	; Copying the value in WREG to 0X0C.

	MOVLW NUM3	; Copying the literal NUM3 to WREG.
	MOVWF 0X0D	; Copying the value in WREG to 0X0D.
	
	MOVLW NUM4	; Copying the literal NUM4 to WREG.
	MOVWF 0X0E	; Copying the value in WREG to 0X0E.
	
	MOVLW NUM5	; Copying the literal NUM5 to WREG.
	MOVWF 0X0F	; Copying the value in WREG to 0X0F.
	
	MOVLW NUM6	; Copying the literal NUM6 to WREG.
	MOVWF 0X10	; Copying the value in WREG to 0X10.
	
	MOVLW NUM7	; Copying the literal NUM7 to WREG.
	MOVWF 0X11	; Copying the value in WREG to 0X11.

	MOVLW NUM8	; Copying the literal NUM8 to WREG.
	MOVWF 0X12	; Copying the value in WREG to 0X12.

	MOVLW NUM9	; Copying the literal NUM9 to WREG.
	MOVWF 0X13	; Copying the value in WREG to 0X13.

	
	MOVLW 0X0A			; Copying 0x0A into WREG
	MOVWF COUNTER			; Copying WREG into counter register.
	
	MOVLW 0X0A			; Copying the literal 0x0A into WREG.
	MOVWF FSR0L			; Copying the literal in WREG into FSR0.
	
LOOP:	

	MOVFF POSTINC0,PORTA		; Copying the value in COUNTER into PORTA.
	
	DECF  COUNTER,F			; Decreasing the value in counter by 1.
	BNZ   LOOP			; If the flag Z in STATUS register is not 0 go to loop.

	SLEEP 				; Going into standby mode.
	END				; Shutting down the PIC18.
	