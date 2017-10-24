; Author: {{cookiecutter.full_name}}
; Email: {{cookiecutter.email}}
; Description: Calculates the Sum of n Integers: 0+1+2+...+n

section .text    
global calcSum  

;***********************    
; in:   ah=string to display
; out:  al=result
calcSum:
    push rbx    ; push rbx
    push rax    ; push rax
    xor al, al  ; 00000000 al
.next:           ; next label
    add al, ah  ; add ah to al 
    dec ah      ; decrease
    jnz .next    ; jump if not zero
    pop rbx     ; get rax
    mov ah, bh
    pop rbx    ; get the actuall x
    ret
;***********************
