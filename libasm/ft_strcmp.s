section .text
    global _ft_strcmp
_ft_strcmp:
    xor rax, rax
    xor rbx, rbx
_cmpLoop:
    mov dl, byte [rdi + rbx]
    cmp dl, byte [rsi + rbx]
    je _inc
    jne _notEqual
_inc:
    inc rbx
    cmp byte [rdi + rbx], 0
    je _notEqual
    jmp _cmpLoop
_notEqual:
    movzx rdx,  byte [rsi + rbx]
    mov al, byte [rdi + rbx]
    sub eax, edx
    jmp _return
_return:
    ret