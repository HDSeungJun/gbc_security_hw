BITS 64
global _start
extern printf
section     .text 

_start:
    mov       rax, 1
    mov       rdi, 1
    mov       rsi, message
    mov       rdx, 26
    syscall
    push    rbp 
    mov     rbp, rsp 
    add     rsp, 16
    mov     rax, [rbp+16]
    push    word[rax]
    mov     rsi, rax 
    mov     rax, 1
    mov     rdi, 1
    mov     rdx, 24
    syscall
    mov     rax, 60
    mov     rdi, 0                                                                                                                             
    syscall

section     .data 
message:
    db        "Hello, World", 10, "My name is "
