
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebp,edx
add	ebx,esp
set	ah,cx
sub	bp,edx
or	ah,edx
and	si,esi
mov	al,edi
aas	bp,al
and	si,ebp
mov	ax,bx
set	ebp,dx
add	esi,edx
add	edi,bx
aas	ecx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
