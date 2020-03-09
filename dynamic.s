
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ebx,ecx
add	ebp,edx
or	eip,ah
aas	di,cx
and	dx,bp
and	esp,dx
and	ip,edi
res	si,al
mov	ebx,ax
add	ip,ah
and	ax,esp
int	eip,ah
set	eax,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
