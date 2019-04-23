; Jose Ramos |  Student ID: 00299444
; Lab: CHAPTER 5 LABS (INDIRECT ADDRESSING  FSR)
; March 14 of 2019
; Lab4

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Create a program that represents an inner and outer loops 
;;  (nested loops).  You can but don't need to use FSR's. Save as 
;;  Chapter5_Lab4_YourName.asm
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; This nested loop will give as result in REG2 19h = 5x5 

COUNTER0 EQU 0X00			; Creating a label for COUNTER0 with the value of 0x00.
COUNTER1 EQU 0X01			; Creating a label for COUNTER1 with the value of 0x01.
REG2 	 EQU 0X02			; Creating a label for REG2 with the value of 0x02.

	ORG   0020			; Starting the program at 20.
	
	MOVLW 0X05			; Copying 0x0A into WREG.
	MOVWF COUNTER0			; Copying WREG into counter register.
	MOVWF COUNTER1			; Copying WREG into counter register.
	CLRF  REG2
LOOP0:	
	MOVLW 0X05
	MOVWF COUNTER1
LOOP1:		 
	INCF REG2,F			; Incrementing REG2 by 1.

	DECF  COUNTER1,F		; Decreasing the value in counter1 by 1.
	BNZ   LOOP1			; If the flag Z in STATUS register is not 0 go to loop1.

	DECF  COUNTER0,F		; Decreasing the value in counter0 by 1.
	BNZ   LOOP0			; If the flag Z in STATUS register is not 0 go to loop0.

	SLEEP 				; Going into standby mode.
	END				; Shutting down the PIC18.