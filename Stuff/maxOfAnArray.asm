
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

mov si,0

mov cl,255

mov bx,0

mainFunc:

    mov al, N[si]
    
    cmp bl,al
    
    jl set
    
    inc si

loop mainFunc

jmp end

set:
    mov bl,al
    
    inc si
    
    jmp mainFunc          

end:
ret

N db 5,4,5,6,1,5,5,6,9
