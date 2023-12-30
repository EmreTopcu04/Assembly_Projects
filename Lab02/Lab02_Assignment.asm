
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 2000h

mov bx,01h

mov cx, N

mov dx,00h

mov di,ax

mainFunc:

mov [di],bx

add dx,bx

inc bx

inc di

loop mainFunc

mov [di],dx

ret 

N dw 5




