;-------------------------------------------------------------
;	ssize_t ft_read(int fd, void *buf, size_t count);
;	ft_read.s
;-------------------------------------------------------------
extern __errno_location
global ft_read
section .text

ft_read:
	mov	rax, 0	; sys_read
	syscall	
	cmp	rax, 0
	jge	.done
	neg	rax
	push	rax		; save errno value
	call	__errno_location wrt ..plt	; call through PLT
	pop	rdx		; restore errno value
	mov	[rax], edx	; *errno = saved value
	mov	rax, -1
.done:
	ret
