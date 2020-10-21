section .text
    global _ft_write
    extern ___error
_ft_write:
    mov rax, 0x2000004
    syscall
    jc _error
    ret
_error:
    push rbx
    mov rax, rbx
    call ___error
    mov [rax], rbx
    pop rbx
    mov rax, -1
    ret
    