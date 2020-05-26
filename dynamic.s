
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	esi,edi
or	cx,edi
aas	ebp,esi
set	ebp,ebx
or	dx,esi
set	ebp,esi
set	ah,esp
add	bx,bx
mov	ah,ebx
and	ax,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
