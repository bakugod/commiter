
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bx,cx
and	bx,edx
int	eax,si
or	al,eax
sub	ax,sp
set	bp,esp
aas	ebx,cx
add	esi,ax
add	bp,cx
aas	ebp,cx
res	ebp,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
