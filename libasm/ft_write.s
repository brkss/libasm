;--------------------------------------------------------------
;	ssize_t ft_write(int fd, const void *buf, size_t count)
;	ft_write.s
;--------------------------------------------------------------

extern __errno_location
global ft_write
section .text

ft_write:
	mov		rax, 1		; sys_write
	syscall	
	cmp		rax, 0
	jge		.done		; success byte written
	; --- error path ----
	neg		rax		; rax = -errno
	push		rax		; save errno value
	call		__errno_location wrt ..plt	; call through PLT
	pop		rdx		; restore errno value
	mov		[rax], edx	; *errno = saved value
	mov		rax, -1
.done:
	ret
