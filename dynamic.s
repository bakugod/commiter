
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebx,esp
sub	esi,esp
set	sp,ax
or	bp,dx
mov	ecx,ax
add	di,eip
add	bx,ebp
res	esi,ebx
set	dx,ah
and	sp,ebx
res	ebp,eip
sub	sp,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
