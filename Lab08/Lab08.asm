
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

START:

lea dx,msg

mov ah,09h

int 21h

lea si, arr

lea di, arr

mov ah, 01h

NEXT:

int 21h 

cmp al,0dh

je LINEEND

mov [di],al

inc di
                                                              
jmp next 

LINEEND:

mov al,'$'

mov [di],al

mov bx,si

PUSHTOSTACK: 

cmp si,di                        

je SETSI

push [si]

inc si

jmp PUSHTOSTACK

SETSI:

mov si,bx

xor ax,ax

jmp POPFROMSTACK

POPFROMSTACK:

cmp si,di

je PRINT

pop ax

mov [si],ax

inc si

jmp POPFROMSTACK

PRINT:

mov dh, 1

mov dl, 1

mov bh, 0

mov ah, 2

int 10h

mov [di],'$'

lea dx, arr

mov ah, 09

int 21h

 
ret
msg dw "Please write a word: $"
arr db 50 dup (0)




