
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esi,cx
add	dx,si
add	eip,esi
or	ah,ecx
add	ebp,ebp
sub	edi,dx
and	di,cx
add	esi,dx
or	ecx,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
