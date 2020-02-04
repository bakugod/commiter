
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	bp,sp
add	di,di
res	si,esp
sub	bx,dx
res	al,sp
res	bp,eip
or	bx,ebp
int	ah,ebx
add	ax,ah
sub	cx,ebp
add	cx,edi
int	edx,ebp
set	esi,ebp
and	al,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
