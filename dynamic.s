
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	dx,dx
add	esp,sp
and	eax,ecx
and	edx,edx
add	esi,ax
sub	edi,ax
mov	ebx,al
set	ip,bp
or	esp,ah
sub	di,esp
mov	al,al
int	dx,esi
set	di,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
