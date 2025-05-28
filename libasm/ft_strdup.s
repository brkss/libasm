;-------------------------------------------------------------
;	char *ft_strdup(const char *s);
;	ft_strdup.s
;-------------------------------------------------------------

extern __errno_location
extern malloc
extern ft_strlen
extern ft_strcpy
global ft_strdup
section .text

ft_strdup:
	; saving RDI
	push	rdi		; 8 bytes -> mis-aligns stack by 8
	call 	ft_strlen wrt ..plt
	mov 	rsi, rax	; rsi = len
	inc	rsi		; +1 for \0
	; align stack as we pushed 8 bytes (rdi), so RSP is misaligned, 
	sub	rsp, 8
	mov	rdi, rsi	; size arg for malloc
	call	malloc wrt ..plt
	add 	rsp, 8		; restore rsp (undo sub 8)
	test	rax, rax	; check if malloc returned NULL
	je	ft_strdup_ret_null	; malloc failed
	pop	rdx		; rdx original restored; stack back to original value 
	mov	rdi, rax	; dst
	mov	rsi, rdx	; src
	call	ft_strcpy wrt ..plt	
	mov	rax, rdi	; ft_strcpy already returned dst, but rax is ovewroted
	ret

ft_strdup_ret_null:
	add 	rsp, 8		; balance the earlier push 
	ret



