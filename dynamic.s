
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	bx,sp
aas	si,esp
sub	ax,si
and	dx,ax
add	ip,ip
and	bp,ebx
aas	eax,ebp
and	esi,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
