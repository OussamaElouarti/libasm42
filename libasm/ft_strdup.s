section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy
_ft_strdup:
	call _ft_strlen
	cmp rax, 0
	je _error
	inc rax
	push rdi
	mov rdi, rax
	call _malloc
	pop rdi
	mov rsi, rdi
	mov rdi, rax
	call _ft_strcpy
	ret
_error:
	ret