; IODemo.asm
; Produces a "bouncing" animation on the LEDs.
; The LED pattern is initialized with the switch state.

ORG 0

	; Set the inital LED
	LOAD   Bit9
	OUT    LEDs
	STORE  CurrPos
	
	; Set the initial score
	LoadI 0
	OUT   Hex0
	STORE Score
	
Moving:
	; Check if switch 0 is on
	IN Switches
	AND Bit0
	JPOS CheckPoint

	; Move the LED towards the right
	LOAD   CurrPos
	AND    Bit0
	JPOS   ResetLED
	LOAD   CurrPos
	SHIFT  -1
	OUT    LEDs
	STORE  CurrPos
	
	; Slow down the loop so humans can watch it
	CALL   Delay
	JUMP   Moving
	
ResetLED:
	; Reset the LED to the left
	LOAD  Bit9
	OUT   LEDs
	STORE CurrPos
	
	; Slow down the loop so humans can watch it
	CALL  Delay
	JUMP  Moving
	
CheckPoint:
	; Check if a point should be added
	LOAD CurrPos
	AND Bit0
	JPOS AddPoint
	JUMP Frozen
	
AddPoint:
	; Add a point to total score
	Load Score
	ADDI 1
	OUT Hex0
	STORE Score
	JUMP Frozen
	
Frozen:
	; Don't go back to moving the LED until the switch is lowered
	IN Switches
	AND Bit0
	JPOS Frozen
	JUMP Moving
	
; To make things happen on a human timescale, the timer is
; used to delay for half a second.
Delay:
	OUT    Timer
WaitingLoop:
	IN     Timer
	ADDI   -1
	JNEG   WaitingLoop
	RETURN

; Variables
CurrPos:   DW 0
Score:     DW 0

; Useful values
Bit0:      DW &B0000000001
Bit9:      DW &B1000000000

; IO address constants
Switches:  EQU 000
LEDs:      EQU 001
Timer:     EQU 002
Hex0:      EQU 004
Hex1:      EQU 005
