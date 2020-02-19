
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	di,di
int	ax,esp
add	di,ebx
set	cx,edi
add	ip,ecx
or	ax,ecx
sub	dx,ebx
int	sp,esp
int	ah,ax
sub	bx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
