; IODemo.asm
; Produces a "bouncing" animation on the LEDs.
; The LED pattern is initialized with the switch state.

ORG 0

	; Get and store the switch values
	IN     Switches
	OUT    LEDs
	STORE  Pattern
	
Left:
	; 0 out the right-most bit
	LOAD   Pattern
	AND    LeftMask
	STORE  Pattern

	; Slow down the loop so humans can watch it.
	CALL   Delay

	; Check if the left place is 1 and if so, switch direction
	LOAD   Pattern
	AND    Bit9         ; bit mask
	JPOS   Right        ; bit9 is 1; go right
	
	LOAD   Pattern
	SHIFT  1
	STORE  Pattern
	OUT    LEDs

	JUMP   Left
	
Right:
	; 0 out the left-most bit
	LOAD   Pattern
	AND    RightMask
	STORE  Pattern
	
	; Slow down the loop so humans can watch it.
	CALL   Delay

	; Check if the right place is 1 and if so, switch direction
	LOAD   Pattern
	AND    Bit0         ; bit mask
	JPOS   Left         ; bit0 is 1; go left
	
	LOAD   Pattern
	SHIFT  -1
	STORE  Pattern
	OUT    LEDs
	
	JUMP   Right
	
; To make things happen on a human timescale, the timer is
; used to delay for half a second.
Delay:
	OUT    Timer
WaitingLoop:
	IN     Timer
	ADDI   -2
	JNEG   WaitingLoop
	RETURN

; Variables
Pattern:   DW 0

; Useful values
Bit0:      DW &B0000000001
Bit9:      DW &B1000000000

LeftMask:  DW &B1111111110
RightMask: DW &B0111111111

; IO address constants
Switches:  EQU 000
LEDs:      EQU 001
Timer:     EQU 002
Hex0:      EQU 004
Hex1:      EQU 005
