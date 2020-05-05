
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	dx,di
add	esi,ah
or	ip,ecx
mov	si,bx
int	al,cx
or	eax,eax
or	eip,edx
sub	si,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
