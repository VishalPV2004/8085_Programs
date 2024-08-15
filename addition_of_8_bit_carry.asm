LXI H, 1000H   ; Load HL with 1000H
MVI M, 02H     ; Store 02H in memory location 1000H

LXI H, 1001H   ; Load HL with 1001H
MVI M, 01H     ; Store 01H in memory location 1001H

; DATA LOADED

LXI H, 1000H   ; Load HL with 1000H
MOV A,M       ;

INX H          ; Increment HL to point to 1001H
ADD M          ; Add data from memory location 1001H to accumulator

MVI B, 00H     ; Initialize register B to 00H

JNC NO_CARRY   ; Jump to NO_CARRY if there is no carry 
INX B          ; Increment B if carry occurred

NO_CARRY:
STA 1100H      ; Store the result (contents of the accumulator) in memory location 1100H
MOV A,B       ; Move the value of B into the accumulator
STA 1099H      ; Store the value of B in memory location 1099H

HLT            ; Halt the execution
