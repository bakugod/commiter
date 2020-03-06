
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	cx,eip
sub	dx,al
add	edi,eip
add	esi,esi
mov	ebp,al
res	ax,ax
mov	ip,si
mov	bx,esi
res	ebp,dx
int	di,esi
int	ebx,ebp
and	edx,sp
mov	eax,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
