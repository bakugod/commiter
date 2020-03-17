
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bx,di
res	al,al
sub	ebp,bp
aas	ebp,dx
or	ebp,bx
sub	si,edx
aas	dx,ax
or	esp,ax
res	ecx,sp
add	ebp,cx
add	ip,eax
or	di,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
