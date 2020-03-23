
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	sp,dx
res	eip,ax
mov	bp,al
and	al,ah
aas	di,edx
and	bx,ebx
or	eip,cx
or	edx,cx
aas	eax,al
add	esp,ax
and	dx,cx
or	di,ebx
res	dx,si
sub	ebp,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
