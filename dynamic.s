
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bx,eax
res	ax,dx
int	edx,edi
mov	ip,ip
res	bp,ax
and	eip,sp
add	ecx,ip
res	eax,ax
mov	bx,ebp
or	sp,bp
set	bx,sp
or	ebp,edx
sub	al,edx
int	dx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
