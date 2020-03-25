
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	eip,bx
or	ah,dx
and	ah,ax
set	ip,al
add	bp,di
set	ax,edi
aas	ebx,al
add	ah,cx
add	dx,eax
aas	edi,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
