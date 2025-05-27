;------------------------------------------------------------------------
;	char *ft_strcpy(char *dst, const char *src);
;	ft_strcmp.s
;------------------------------------------------------------------------


global ft_strcpy

section .text

ft_strcpy:
	push	rdi		; save dst pointer
	mov	rax, rdi	; copy dst to rax for return
	mov	rdi, rdi	; ensure RDI is set to destination
	mov	rsi, rsi	; ensure RSI is set to source

.loop:
	lodsb			; AL = *(RSI) ; RSI++
	stosb			; *(RDI) = AL ; RDI++
	test	al, al
	jne	.loop
	pop	rdi		; restore original dst pointer
	mov	rax, rdi	; return original dst pointer
	ret
