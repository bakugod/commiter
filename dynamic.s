
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebp,edx
add	cx,esp
and	ebx,ecx
and	esp,ebp
mov	bp,sp
sub	cx,eax
or	esi,ax
sub	bp,edx
res	ebx,ax
res	bx,dx
set	bx,ah
and	bx,si
int	edi,al
and	bp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
