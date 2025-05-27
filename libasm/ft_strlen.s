;-----------------------------------------------------------
;	ft_strlen.s
;	size_t ft_strlen(const char *s);
;-----------------------------------------------------------

global ft_strlen
section .text

ft_strlen:
	mov	rax, rdi 	; rax = s (start pointer)
.loop:
	cmp	BYTE [rax], 0
	je	.done
	inc 	rax
	jmp	.loop

.done:
	sub	rax, rdi	; rax = end - start
	ret

