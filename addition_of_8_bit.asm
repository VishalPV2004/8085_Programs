LXI H, 1000H
MVI M, 02H

LXI H,1001H
MVI M, 01H

; The data is now loaded and ready to be fetched from memory

LXI H,1000H
MOV A,M

INX H

ADD M

STA 1100H

HLT

