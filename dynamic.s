
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	esi,bp
int	bp,di
mov	si,si
sub	ip,edi
and	cx,ah
res	bx,ah
or	di,dx
add	al,bx
set	al,ecx
and	ip,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
