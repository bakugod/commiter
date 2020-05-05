
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	bx,dx
and	eip,di
set	ebp,cx
aas	dx,ah
add	esi,eax
mov	bp,edi
res	bp,ebx
set	si,eax
res	cx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
