
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eax,ah
or	eip,bp
add	bx,edi
or	dx,di
and	eax,ip
set	bx,ax
sub	edx,ebx
set	ebx,bp
add	ecx,esi
set	ah,ebp
mov	eip,eax
add	ax,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
