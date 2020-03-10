
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esi,al
sub	dx,ip
add	sp,dx
aas	di,ip
sub	eax,bx
res	ah,cx
or	bx,esp
or	ah,sp
set	ebx,ax
or	ax,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
