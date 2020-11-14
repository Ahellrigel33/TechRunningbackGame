; Game Logic

ORG 0

reset:
	LOAD	clear		; clear all hex displays
	STORE	Hex5D
	STORE	Hex4D
	STORE	Hex3D
	STORE	Hex2D
	STORE	Hex1D
	STORE	Hex0D
	OUT	HexPeriph

	LOADI	0
	STORE	current

	LOADI	6
	STORE 	scaleCounter

	LOADI	&B0000000000
	STORE	progressBar

	JUMP	shiftDefense

generateDefense:	
	IN	PlayerPeriph
	STORE	playerD

	IN 	DefGen
	STORE 	Hex5D
	LOAD	writeDimHex
	OR	Hex5
	OR	Hex5D
	OUT	HexPeriph
	LOADI	5
	CALL	DelayAC

shiftDefense:
	IN	PlayerPeriph
	STORE	playerD
	
	LOAD 	Hex1D
	STORE	Hex0D

	LOAD 	Hex2D
	STORE	Hex1D

	LOAD 	Hex3D
	STORE	Hex2D

	LOAD 	Hex4D
	STORE	Hex3D

	LOAD 	Hex5D
	STORE	Hex4D

	LOAD	clear
	STORE	Hex5D

printShift:
	IN	PlayerPeriph
	STORE	playerD	

	LOAD	Hex5D
	OUT	HexPeriph

	LOAD	writeDimHex
	OR	Hex4
	OR	Hex4D
	OUT	HexPeriph

	LOAD	writeDimHex
	OR	Hex3
	OR	Hex3D
	OUT	HexPeriph

	LOAD	writeDimHex
	OR	Hex2
	OR	Hex2D
	OUT	HexPeriph

	LOAD	writeDimHex
	OR	Hex1
	OR	Hex1D
	OUT	HexPeriph

	LOAD	writeDimHex
	OR	Hex0
	OR	Hex0D
	OUT	HexPeriph

	CALL 	checkCollision

	CALL	makeProgress

checkForEnd:
	LOAD	current
	ADDI	1
	STORE	current
	LOAD	current
	SUB	goalCount
	JZERO	generateGoalLine

	JPOS	generateNoContent

	JUMP	generateDefense

endGame:
	LOAD 	progressBar
	OUT 	LEDs
	LOADI	5
	CALL	DelayAC

	LOAD	&B1000000000
	OUT	LEDs
	LOADI	5
	CALL	DelayAC

	JUMP	endGame

generateGoalLine:
	LOAD	goalLine
	STORE	Hex5D
	LOAD	writeHex
	OR	Hex5
	OR	Hex5D
	OUT	HexPeriph
	LOADI	5
	CALL	DelayAC

	JUMP	shiftDefense

generateNoContent:
	LOAD	nothing
	STORE	Hex5D
	LOAD	writeHex
	OR	Hex5
	OR	Hex5D
	OUT	HexPeriph
	LOADI	5
	CALL	DelayAC

	LOAD	spacesAfter
	ADDI	1
	STORE 	spacesAfter
	SUB	buffer
	JPOS	endGame

	JUMP	shiftDefense

	

;*******************************************************************************
; Subroutine : Collision Checking (Thien Dinh-Do)
;*******************************************************************************

checkCollision:
	LOAD	playerD
	AND	Hex0D
	JPOS	endGame
	RETURN

;*******************************************************************************
; Goal Line Generation (Thien Dinh-Do)
;*******************************************************************************

goalLine:	DW &B0000110

current:	DW 0
goalCount:	DW 54

spacesAfter:	DW 0
buffer:		DW 5

;*******************************************************************************
; Subroutine : Progress Bar (Thien Dinh-Do)
;*******************************************************************************

makeProgress:
	LOAD 	scaleCounter
	SUB	ONE
	STORE	scaleCounter
	
	JPOS	showProgress

	LOADI	6
	STORE 	scaleCounter

	LOAD	progressBar
	SHIFT	1
	OR 	LEDOne
	STORE 	progressBar

showProgress:
	LOAD	progressBar
	OUT	LEDs
	
	RETURN

scaleCounter:	DW 6

LEDOne:		DW &B0000000001
progressBar:	DW &B0000000000

;*******************************************************************************
; Subroutine : Default Delay (ECE 2031)
;*******************************************************************************

;DelayAC:
;	STORE  	DelayTime   	; Save the desired delay
;	OUT    	Timer   	; Reset the timer
;WaitingLoop:
;	IN	Timer      	; Get the current timer value
;	SUB    	DelayTime
;	JNEG   	WaitingLoop	; Repeat until timer = delay value
;	RETURN

DelayAC:
    LOADI 0             ; Reload a 0 into the accululator
    STORE OuterCount    ; Reset the outer counter to 0
    JUMP  InnerLoop     ; Jump back to the InnerLoop to continue the process
OuterLoop:
    LOAD  OuterCount    ; Load OuterLoop counter
    ADDI  1             ; Add one to OuterLoop counter
    STORE OuterCount    ; Store the current count
    XOR   OuterMask     ; Execute once when OuterLoop counter reaches 9
    JZERO EndDelay
InnerLoop:
    ADDI  1             ; Add one to accumulator
    JZERO OuterLoop     ; When acc is 0, jump to outer loop
    JUMP  InnerLoop     ; Repeat, causes accululator to count all 2^16 values
EndDelay:
	RETURN

OuterMask:  DW 9
OuterCount: DW 0

DelayTime: 	DW 0

;*******************************************************************************
; Peripheral : Hex Display (Ryan Chen)
;*******************************************************************************

; Opcodes (Load then or with operand)
clear:		DW &H0000
writeHex:	DW &H1000
writePlayer:	DW &H2000 	; (NO MORE)
writeDimHex:	DW &H3000

; writeHex operands
Hex0:		DW &B0000000000000000
Hex1:		DW &B0000001000000000
Hex2:		DW &B0000010000000000
Hex3:		DW &B0000011000000000
Hex4:		DW &B0000100000000000
Hex5:		DW &B0000101000000000
leftDef:	DW &B0001000
midDef:		DW &B1000000
rightDef:	DW &B0000001
nothing:	DW &B0000000

; writePlayer operands (NO MORE)
leftSide:	DW &B0010100000000000
midSide:	DW &B0010010000000000
rightSide:	DW &B0010001000000000

; Hex datas to store into
Hex0D:		DW &B0000000000000000
Hex1D:		DW &B0000000000000000
Hex2D:		DW &B0000000000000000
Hex3D:		DW &B0000000000000000
Hex4D:		DW &B0000000000000000
Hex5D:		DW &B0000000000000000
playerD:	DW &B0000000000000000

; HexPeriph:  	EQU &H0E0

;*******************************************************************************
; Peripheral : Player Input Interface/Button (Ryan Chen)
;*******************************************************************************

; PlayerPeriph:	EQU &H0E1

;*******************************************************************************
; Peripheral : Random Defender Generator (Stephen Fazio)
;*******************************************************************************

defenseInput:	DW &B0000000000000000
; DefGen:	EQU &H0E2

;*******************************************************************************
; Values, Constants, and Addresses (ECE 2031)
;*******************************************************************************

; Useful values
ONE:		DW 1
Bit0:      	DW &B0000000001
Bit1:      	DW &B0000000010
Bit2:     	DW &B0000000100
Bit3:     	DW &B0000001000
Bit4:      	DW &B0000010000
Bit5:      	DW &B0000100000
Bit6:      	DW &B0001000000
Bit7:      	DW &B0010000000
Bit8:      	DW &B0100000000
Bit9:      	DW &B1000000000

; IO address constants
Switches:  	EQU &H000
LEDs:      	EQU &H001
Timer:     	EQU &H002
HexPeriph:  	EQU &H0E0
PlayerPeriph:	EQU &H0E1
DefGen:		EQU &H0E2



