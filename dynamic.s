
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ax,ah
res	sp,dx
and	di,edi
sub	esp,edi
int	di,di
set	eax,ebp
or	di,bx
res	ecx,esi
res	ip,sp
add	eax,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
