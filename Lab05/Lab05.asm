
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


mainFunc:

    mov dx,2000h
    
    add dx,di
    
    mov bx,0

print:
    
    mov si,0
    
    mov cx,5
    
    cmp dx,2027h
    
    jle next
    
    mov dx,2000h
    
next:
    
    mov al,dots[bx][si]
    
    out dx,al
    
    inc si
    
    inc dx
    
    cmp si,5
    
    loopne next
    
    add bx,5
    
    cmp bx,40
    
    jl print
    
    mov cx,0ffh
    
    wait:
    loop wait
    
add di,5

cmp di,35

jle end

mov di,0

end:      
jmp mainFunc  
ret

dots db 00000000b,00000000b,00000000b,00000000b,00000000b,
     
     db 00000000b,00000000b,00000000b,00000000b,00000000b,
     
     db 01111111b,01001001b,01001001b,01001001b,01001001b
     
     db 01111111b,0000100b,00001000b,0000100b,01111111b
     
     db 01111111b,00001001b,00001001b,00001001b,01110110b
     
     db 01111111b,01001001b,01001001b,01001001b,01001001b
     
     db 00000000b,00000000b,00000000b,00000000b,00000000b
     
     db 00000000b,00000000b,00000000b,00000000b,00000000b
     
     



