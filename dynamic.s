
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	bx,ah
set	ip,ax
mov	cx,edx
add	bp,ebx
or	ip,esp
add	di,ah
and	ah,edi
mov	dx,eip
or	ebx,eip
and	di,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
