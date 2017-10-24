; Author: {{cookiecutter.full_name}}
; Email: {{cookiecutter.email}}
; Description: calls a procedure from another file
section .text
    global _start ; required for the entry point
    
extern calcSum

_start:
    mov ah, 5
    call calcSum
    
finish: 
    mov rax, 1 ; code for exit
    mov rbx, 0 ; return code    
    int 80H    ; make kernel call
