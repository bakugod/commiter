
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ah,ax
res	eip,ebx
add	ah,ax
res	ecx,bx
mov	ip,dx
res	ax,esp
int	ebx,sp
res	di,edx
or	cx,di
and	eax,al
sub	si,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
