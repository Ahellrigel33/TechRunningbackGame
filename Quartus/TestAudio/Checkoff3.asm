ORG 0

STORE OuterCount

FlipLEDs:
    LOAD  LEDstate      ; Load the old LEDstate
    XOR   LEDMask       ; Flip the LEDstate
    STORE LEDstate      ; Store the new LEDstate
    OUT   DPs           ; Output new state to the DP
    LOADI 0             ; Reload a 0 into the accululator
    STORE OuterCount    ; Reset the outer counter to 0
    JUMP  InnerLoop     ; Jump back to the InnerLoop to continue the process
OuterLoop:
    LOAD  OuterCount    ; Load OuterLoop counter
    ADDI  1             ; Add one to OuterLoop counter
    STORE OuterCount    ; Store the current count
    XOR   OuterMask     ; Execute once when OuterLoop counter reaches 9
    JZERO FlipLEDs
InnerLoop:
    ADDI  1             ; Add one to accumulator
    JZERO OuterLoop     ; When acc is 0, jump to outer loop
    JUMP  InnerLoop     ; Repeat, causes accululator to count all 2^16 values


LEDstate:   DW 0
LEDMask:    DW &B0000000001
OuterMask:  DW 9
OuterCount: DW 0

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
