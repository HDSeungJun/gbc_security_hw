; Disassembly of file: hello_option.o
; Tue Jan  5 23:25:26 2021
; Type: Mach-O Little Endian64
; Syntax: NASM
; Instruction set: 8086, x64

default rel

global _main

extern _write                                           ; near
extern _printf                                          ; near


SECTION ._TEXT.__text align=16 execute                  ; section number 1, code

_main:  ; Function begin
        push    rbp                                     ; 0000 _ 55
        mov     rbp, rsp                                ; 0001 _ 48: 89. E5
        sub     rsp, 32                                 ; 0004 _ 48: 83. EC, 20
        mov     dword [rbp-4H], edi                     ; 0008 _ 89. 7D, FC
        mov     qword [rbp-10H], rsi                    ; 000B _ 48: 89. 75, F0
        mov     edi, 1                                  ; 000F _ BF, 00000001
        lea     rsi, [rel _main+33H]                    ; 0014 _ 48: 8D. 35, 00000033(rel)
        mov     edx, 13                                 ; 001B _ BA, 0000000D
        call    _write                                  ; 0020 _ E8, 00000000(rel)
        mov     rcx, qword [rbp-10H]                    ; 0025 _ 48: 8B. 4D, F0
        mov     rsi, qword [rcx+8H]                     ; 0029 _ 48: 8B. 71, 08
        lea     rdi, [rel _main+28H]                    ; 002D _ 48: 8D. 3D, 00000028(rel)
        mov     qword [rbp-18H], rax                    ; 0034 _ 48: 89. 45, E8
        mov     al, 0                                   ; 0038 _ B0, 00
        call    _printf                                 ; 003A _ E8, 00000000(rel)
        xor     r8d, r8d                                ; 003F _ 45: 31. C0
        mov     dword [rbp-1CH], eax                    ; 0042 _ 89. 45, E4
        mov     eax, r8d                                ; 0045 _ 44: 89. C0
        add     rsp, 32                                 ; 0048 _ 48: 83. C4, 20
        pop     rbp                                     ; 004C _ 5D
        ret                                             ; 004D _ C3
; _main End of function


SECTION ._TEXT.__cstring align=1 noexecute              ; section number 2, data

        db 48H, 65H, 6CH, 6CH, 6FH, 2CH, 20H, 57H       ; 004E _ Hello, W
        db 6FH, 72H, 6CH, 64H, 0AH, 00H, 4DH, 79H       ; 0056 _ orld..My
        db 20H, 6EH, 61H, 6DH, 65H, 20H, 69H, 73H       ; 005E _  name is
        db 20H, 25H, 73H, 0AH, 00H                      ; 0066 _  %s..