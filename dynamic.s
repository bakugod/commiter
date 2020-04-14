
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	eax,edx
set	ah,cx
int	eip,ax
set	sp,ip
int	ebx,ah
and	dx,di
add	eax,ax
set	esp,ax
add	edx,ecx
sub	al,bx
set	cx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
