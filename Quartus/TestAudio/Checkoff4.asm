ORG 0
  ; Send the peripheral a value once at reset
  IN   Switches
  OUT  SqGen
; Enter an infinite loop, showing that SCOMP
; doesnt need to do anything and the peripheral
; will continue to generate the square wave.
Here: JUMP Here


; IO address constants
Switches:  EQU &H000
LEDs:      EQU &H001
Timer:     EQU &H002
Hex0:      EQU &H004
Hex1:      EQU &H005
I2C_cmd:   EQU &H090
I2C_data:  EQU &H091
I2C_rdy:   EQU &H092
DPs:       EQU &H0E0
SqGen:     EQU &H0F0
