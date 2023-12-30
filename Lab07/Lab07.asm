
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

dec di

mov bx,di

CALCULATEPALINDROME:

cmp si,di

je PALINDROME

cmp bx,di

je PALINDROME

mov al,[si]

cmp al,[di]

jne NOTPALINDROME

inc si

dec di

jmp CALCULATEPALINDROME



NOTPALINDROME:

lea dx,msg2

mov ah,09h

int 21h

jmp END

PALINDROME:

lea dx,msg3

mov ah,09h

int 21h

jmp END


END:

ret

arr db 50 DUP (0)

msg db 10,"Please Enter an Input:$"
msg2 db 13,10,"It's Not Palindrome! $"
msg3 db 16,10,"It's Palindrome! $"









