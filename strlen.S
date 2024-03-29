BITS 64
SECTION .text
GLOBAL strlen

strlen:
    push    rbp
    mov     rbp, rsp
    xor     rax, rax

loop:
    cmp     BYTE[rdi], 0
    je      return
    inc     rdi
    inc     rax
    jmp     loop

return:
    mov     rsp, rbp
    pop     rbp
    ret