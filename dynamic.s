
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ebx,di
int	al,ebx
or	eip,ah
and	ip,ax
aas	dx,edx
int	si,ebp
res	ip,bp
and	bp,bx
or	dx,ebp
set	bx,bp
or	eax,edi
sub	si,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
