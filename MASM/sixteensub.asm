.model small
.code
    mov ax,@data
    mov ds,ax
    mov ax,832Ah
    mov bx,2235h
    sub ax,bx
    mov cx,04h
    mov dx,0h

    digit:
        mov bx,10h
        div bx
        push dx
        xor dx,dx
    loop digit

    mov cx,04h

    print:
        pop dx
        cmp dx,0ah
        jge alpha
        add dx,30h
        jmp display
    
    alpha:
        add dx,37h
    
    display;
        mov ah,02h
        int 21h
    loop print
    mov ah,4ch
    int 21h
end