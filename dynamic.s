
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	di,ah
int	esi,dx
mov	ip,ah
and	eax,al
and	dx,edi
and	ip,cx
aas	ah,dx
add	ax,sp
and	ecx,bx
set	ip,si
int	ip,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
