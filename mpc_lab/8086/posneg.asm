ASSUME CS:CODE,DS:DATA
DATA SEGMENT
  a dw 0005H,0FFEBH,0002H,0FFEAH
DATA ENDS
CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX
        MOV CX,0004H
        MOV BX,0000H
        MOV DX,0000H
        LEA SI,a
    L:  MOV AX,[SI]
        CMP AX,0000H
        JL NEGE
        CMP AX,0000H
        JG POS
  RES:  ADD SI,2
        DEC CX
        JNZ L

        MOV AH,4CH
        INT 21H

    POS: INC BX
         JMP RES
    NEGE: INC DX
         JMP RES
CODE ENDS
END START
