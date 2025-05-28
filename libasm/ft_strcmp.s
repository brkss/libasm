;-------------------------------------------------------------
;	int ft_strcmp(const char *s1, const char *s2);
;	ft_strcmp.s
;-------------------------------------------------------------


global ft_strcmp

section .text

ft_strcmp:
.loop:
	movzx		eax, byte [rdi]		; load char from s1 into eax
	movzx		edx, byte [rsi]		; load char from s2 into edx
	sub		eax, edx		; compare the characters
	jne		.done			; if not equal, we're done
	test		al, al			; check if we reached end of string
	je		.done			; if yes, we're done
	inc		rdi			; move to next char in s1
	inc		rsi			; move to next char in s2
	jmp		.loop			; continue loop
.done:
	ret

