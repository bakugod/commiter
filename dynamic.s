
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ip,al
int	edx,ebx
mov	bx,ebx
add	bp,ax
mov	bp,al
or	esi,cx
set	bp,ebp
and	ecx,ah
int	ecx,edi
set	dx,eax
or	cx,ax
int	di,sp
sub	ebx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
