section .text
    global _ft_strcpy
_ft_strcpy:
    xor rbx, rbx
    mov rax, 0
    cmp byte [rsi + rbx], byte 0
    je _return
    jmp _cpyLoop
_cpyLoop:
    mov dl, byte[rsi +rbx]
    mov byte [rdi +rbx], dl
    cmp byte [rsi +rbx], 0
    jne _inc
    jmp _return
_inc:
    inc rbx
    jmp _cpyLoop
_return:
    mov byte [rdi + rbx], 0
    mov rax, rdi
    ret
