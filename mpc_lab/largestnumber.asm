ASSUME CS:CODE,DS:DATA
DATA SEGMENT
    a db 03H,02h,05H,04h,01H
DATA ENDS
CODE SEGMENT
START: MOV AX,DATA
       MOV DS,AX
       
       MOV SI,01H
       MOV CX,05H
       MOV BL,a[00H]
   L:  MOV AL,a[SI]
       CMP AL,BL
       JG RESULT
       
       INC SI
       DEC CX
       JNZ L
       
       MOV AH,4CH
       INT 21H       
RESULT:
       MOV BL,AL
       JMP L
CODE ENDS
END START
