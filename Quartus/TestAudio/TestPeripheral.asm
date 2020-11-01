ORG 0
DPLoop:
    LOADI  &B101010
    OUT    DPs
    LOADI  2
    CALL   DelayAC
    LOADI  &B010101
    OUT    DPs
    LOADI  3
    CALL   DelayAC
    JUMP   DPLoop

;*******************************************************************************
; DelayAC: Pause for some multiple of 0.1 seconds.
; Call this with the desired delay in AC.
; E.g. if AC is 10, this will delay for 10*0.1 = 1 second
;*******************************************************************************
DelayAC:
	STORE  DelayTime   ; Save the desired delay
	OUT    Timer       ; Reset the timer
WaitingLoop:
	IN     Timer       ; Get the current timer value
	SUB    DelayTime
	JNEG   WaitingLoop ; Repeat until timer = delay value
	RETURN
DelayTime: DW 0

Timer:     EQU &H002
DPs:       EQU &H0E0