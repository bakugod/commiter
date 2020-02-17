
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eax,edi
aas	edi,ax
sub	ebp,ebx
mov	esi,esi
sub	ecx,esp
res	ah,ax
sub	ebp,dx
sub	ebp,cx
sub	dx,bp
sub	di,ah
mov	dx,bx
aas	ip,esi
add	esi,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
