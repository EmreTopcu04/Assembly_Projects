
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

cmp N,0

je setZero

cmp N,1

je setOne

mov cx,N

mov ax,1

mov bx,0

mainFunc:

    mov dx,ax
    
    add ax,bx
    
    mov bx,dx
    
    loop mainFunc
    
mov Fibonacci,ax
    
jmp end

setZero:

    mov Fibonacci,0
    
    jmp end

setOne:

    mov Fibonacci,1
    
    jmp end
        
end:

ret

N dw 6

Fibonacci dw ?




