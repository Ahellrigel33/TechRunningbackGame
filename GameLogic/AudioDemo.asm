
ORG 0

;000000abcdefghij
;abcdefghij000000
;aaaaaaaabcdefghi
;a0000000bcdefghi

main:
    IN  Switches
    SHIFT 6         ; Bring repeat bit out front
    SHIFT -7        ; Arithemetic right shift
    AND   Bitmask
    OUT   LEDs
    OUT   AudioPeriph
    LOADI  10
    CALL DelayAC
    JUMP  main

DelayAC:
	STORE  	DelayTime   	; Save the desired delay
	OUT    	Timer   	; Reset the timer
WaitingLoop:
	IN	Timer      	; Get the current timer value
	SUB    	DelayTime
	JNEG   	WaitingLoop	; Repeat until timer = delay value
	RETURN

Bitmask:  DW &B1000000011111111

RamblinWreck:  DW &B0000000000000001
RepeatRunning:  DW &B1000000000000010

DelayTime: 	DW 0

; IO address constants
Switches:  	EQU &H000
LEDs:      	EQU &H001
Timer:     	EQU &H002
HexPeriph:  	EQU &H021
PlayerPeriph:	EQU &H022
DefGen:		EQU &H023
AudioPeriph:   EQU &H024