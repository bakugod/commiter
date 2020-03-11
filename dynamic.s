
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edi,ah
int	dx,ah
or	ip,ah
set	bx,edx
aas	si,ebp
sub	di,al
add	di,eax
add	ah,dx
or	ebp,bp
add	ah,ebp
int	al,dx
mov	si,eax
or	eip,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
