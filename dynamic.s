
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	bp,dx
and	ax,esp
aas	bx,ebp
sub	sp,di
or	edx,edx
set	bx,ah
add	edi,di
sub	dx,sp
set	ebx,eip
int	edi,esp
set	ebp,sp
res	dx,eip
int	esi,ebp
add	bx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
