section .text
    global _ft_read
    extern ___error
_ft_read:
    mov rax, 0x2000003
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