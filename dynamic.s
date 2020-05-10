
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebp,ax
or	sp,di
int	esi,eip
and	ip,ebp
sub	dx,dx
aas	ax,ah
add	al,ebx
set	sp,al
aas	edx,edi
sub	edx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
