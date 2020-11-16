; Game Logic

ORG 0

reset:
	LOAD	NoAudio
	OUT	AudioPeriph

	LOADI	Difficulty
	OUT	DefGen

	LOAD	clear
	STORE	Hex5D
	STORE	Hex4D
	STORE	Hex3D
	STORE	Hex2D
	STORE	Hex1D
	STORE	Hex0D
	OUT	HexPeriph

	LOADI	0
	STORE	current
	STORE	spacesAfter

	LOADI	5
	STORE 	scaleCounter

	LOADI	&B0000000000
	STORE	progressBar

	LOADI	16
	STORE	endGameTimer

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
	LOAD	RunningR
	OUT 	AudioPeriph

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
	JPOS	endGameWIN

	JUMP	shiftDefense

	

;*******************************************************************************
; Subroutine : Collision Checking (Thien Dinh-Do)
;*******************************************************************************

checkCollision:
	LOAD	playerD
	AND	Hex0D
	JPOS	endGameLOSE
	RETURN

;*******************************************************************************
; Goal Line Generation (Thien Dinh-Do)
;*******************************************************************************

goalLine:	DW &B0000110

current:	DW 0
goalCount:	DW 45

spacesAfter:	DW 0
buffer:		DW 5

;*******************************************************************************
; End Game (Thien Dinh-Do)
;*******************************************************************************

endGameWIN:
	LOAD	NoAudio
	OUT	AudioPeriph
	LOAD	RamblinN
	OUT	AudioPeriph

	JUMP	blinkLEDs

endGameLOSE:
	LOAD	NoAudio
	OUT	AudioPeriph

blinkLEDs:
	LOAD 	progressBar
	OUT 	LEDs
	LOADI	5
	CALL	DelayAC

	LOAD	&B1000000000
	OUT	LEDs
	LOADI	5
	CALL	DelayAC

	LOAD	endGameTimer
	SUB	ONE
	STORE	endGameTimer

	LOAD	endGameTimer
	JZERO	nextLevel

	JUMP	blinkLEDs

nextLevel:
	LOAD	Difficulty
	ADDI	ONE
	STORE	Difficulty

	JUMP 	reset

endGameTimer:	DW 16

;*******************************************************************************
; Subroutine : Progress Bar (Thien Dinh-Do)
;*******************************************************************************

makeProgress:
	LOAD 	scaleCounter
	SUB	ONE
	STORE	scaleCounter
	
	JPOS	showProgress

	LOADI	5
	STORE 	scaleCounter

	LOAD	progressBar
	SHIFT	1
	OR 	LEDOne
	STORE 	progressBar

showProgress:
	LOAD	progressBar
	OUT	LEDs
	
	RETURN

scaleCounter:	DW 5

LEDOne:		DW &B0000000001
progressBar:	DW &B0000000000

;*******************************************************************************
; Subroutine : Default Delay (ECE 2031)
;*******************************************************************************

DelayAC:
	STORE  	DelayTime   	; Save the desired delay
	OUT    	Timer   	; Reset the timer
WaitingLoop:
	IN	Timer      	; Get the current timer value
	SUB    	DelayTime
	JNEG   	WaitingLoop	; Repeat until timer = delay value
	RETURN

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

Difficulty:	DW &B0000000000000000
defenseInput:	DW &B0000000000000000
; DefGen:	EQU &H0E2

;*******************************************************************************
; Peripheral : Audio (Akash Harapanahalli & Andrew Hellrigel)
;*******************************************************************************

NoAudio:		DW &B0000000000000000
RamblinN:	DW &B0000000000000001
RamblinR:	DW &B1000000000000001
RunningN:	DW &B0000000000000010
RunningR:	DW &B1000000000000010

; AudioPeriph:	EQU &H024

;*******************************************************************************
; Values, Constants, and Addresses (ECE 2031)
;*******************************************************************************

; Useful values
ONE:		DW 1
NEGONE:		DW -1
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
HexPeriph:  	EQU &H021
PlayerPeriph:	EQU &H022
DefGen:		EQU &H023
AudioPeriph:	EQU &H024



