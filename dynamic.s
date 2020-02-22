
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebp,ax
set	ecx,eax
int	esp,dx
set	dx,ip
and	cx,ecx
res	ecx,cx
sub	edi,ax
add	bp,bp
res	edx,al
add	ebp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
