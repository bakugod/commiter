
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ebp,esp
and	eax,edi
res	eip,esi
set	ebx,bp
set	bx,ah
and	edi,ip
sub	si,edx
set	ah,di
set	dx,ah
set	si,bx
or	eax,dx
aas	esi,ax
res	edx,edx
or	bx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
