; counting.asm
; Counts to eight, then divides by two and repeats
; Andrew Hellrigel
; ECE2031 L09
; 10/06/2020

ORG 0
	
AddLoop:
	LOAD Data
	ADDI 1
	STORE Data
	AND	Bit3
	JPOS DivideLoop
	JUMP AddLoop
	
DivideLoop:
	LOAD Data
	SHIFT -1
	STORE DATA
	JUMP AddLoop

ORG &H100

Data:      DW  0
Bit3:      DW  &B1000

