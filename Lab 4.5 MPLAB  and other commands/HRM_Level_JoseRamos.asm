;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;	CODE IS INTENDED TO REPRESENT THE CODE IN LEVEL 4 OF HUMAN RESOURCE MACHINE
;;	The INBOX is going to incremtent from 0 to 5 having the values of 0 1 2 3 4 5
;;  The OUTBOX should have the values of 1 0 3 2 5 4.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Creating a labels called COUNTER, INBOX, OUTBOX, WREG
COUNTER EQU 0X00				
INBOX	EQU	0X01				 
OUTBOX 	EQU	0X02				
WREG	EQU	0XFE8				

	    MOVLW   0X03			; Copying the literal 0x03 into WREG
	    MOVWF	COUNTER			; Copying WREG into COUNTER register
	    CLRF	WREG			; Crearing WREG
	
LOOP:   MOVFF	INBOX,WREG		; Copying value in INBOX into WREG
		INCF    INBOX			; Inreasing value in INBOX
		MOVFF  	INBOX,OUTBOX	; Copying value in INBOX into OUTBOX
		INCF	INBOX,F			; Increasing value in INBOX register
		MOVFF	WREG,OUTBOX		; Copying value in WREG into OUTBOX register
		DECF    COUNTER,F		; Increasing the value in counter
		BNZ 	LOOP			; IF the flag Z in STATUS resgister is not 0 go to loop 
;End of loop	
		SLEEP 					; Going into standby mode
		END						; Shutting down the PIC18