section .text
    global _ft_write
    extern ___error
_ft_write:
    mov rax, 0x2000004
    syscall
    jc _error
    ret
_error:
    push rax
    call ___error
    pop rdi
    mov [rax], rdi
    mov rax, -1
    ret
    