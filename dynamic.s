
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bp,sp
sub	edx,dx
and	edi,ebp
and	al,ah
int	ax,cx
set	ah,ecx
add	si,ecx
aas	ebx,ebp
or	edi,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
