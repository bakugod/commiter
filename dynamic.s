
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	si,ecx
res	eax,sp
or	ax,edi
sub	bx,al
res	al,ecx
sub	cx,al
add	dx,ax
int	bp,ebp
or	ecx,sp
and	si,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
