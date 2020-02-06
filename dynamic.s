
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esi,dx
int	bx,bp
and	bp,ah
res	bx,sp
add	dx,dx
aas	ebx,edx
int	ecx,bp
and	si,dx
mov	cx,edx
set	al,dx
and	ip,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
