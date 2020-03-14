
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	al,ecx
sub	esi,cx
int	esp,edi
mov	eip,dx
add	ecx,esi
or	bx,dx
add	di,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
