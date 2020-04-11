
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edi,edx
set	sp,ip
aas	cx,dx
add	eax,edx
add	bp,ebx
int	al,cx
set	ax,ax
and	ecx,ecx
add	esi,dx
and	bp,al
aas	di,ah
sub	ebp,cx
or	ecx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
