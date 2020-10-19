section .text 
    global _ft_strlen
_ft_strlen:
    xor rax, rax
    jmp _lenLoop
_lenLoop:
    cmp byte [rdi + rax], byte 0
    jne _inc
    jmp _return
_inc:
    inc rax
    jmp _lenLoop
_return:
    ret