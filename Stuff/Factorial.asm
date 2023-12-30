
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx, factorial

mov bx,factorial

mov ax,1

Factorial:
    
mul bx

dec bx

loop Factorial

ret

factorial dw 5




