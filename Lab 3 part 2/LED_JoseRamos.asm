; Jose Ramos |  Student ID: 00299444
; Lab: Chapter 3 Labs Part2
; March 3 of 2019

	NUM0  EQU B'00111111'	; Creating a label for the representation of 0 in a 7seg in binary 
	NUM1  EQU B'00000110'	; Creating a label for the representation of 1 in a 7seg in binary
	NUM2  EQU B'01011011'	; Creating a label for the representation of 2 in a 7seg in binary
	NUM9  EQU B'01100111'	; Creating a label for the representation of 9 in a 7seg in binary

	CLRF TRISA		;CLREAR PORTA
	CLRF TRISB		;CLREAR PORTB
	CLRF TRISC		;CLREAR PORTC
	CLRF TRISD		;CLREAR PORTD

	MOVLW NUM2	; Copying the literal NUM2 to WREG.
	MOVWF PORTA	; Copying the value in WREG to PORTA.

	MOVLW NUM0	; Copying the literal NUM0 to WREG.
	MOVWF PORTB	; Copying the value in WREG to PORTB.

	MOVLW NUM1	; Copying the literal NUM1 to WREG.
	MOVWF PORTC	; Copying the value in WREG to PORTC.

	MOVLW NUM9	; Copying the literal NUM9 to WREG.
	MOVWF PORTD	; Copying the value in WREG to PORTD.

	SLEEP		; Going into standby mode
	END		; ShutTing down the PIC18