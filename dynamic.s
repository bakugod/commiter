
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	sp,ebp
and	di,al
set	cx,ah
int	eax,cx
res	ecx,di
add	di,cx
sub	dx,ecx
aas	esp,bx
mov	ah,edx
add	ebx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
