
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	si,esi
sub	ax,esi
set	sp,di
and	eax,cx
and	esi,edi
add	edx,bp
aas	si,sp
res	edi,ah
res	dx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
