
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	bp,dx
and	edi,di
int	di,ah
set	eip,ebx
set	ecx,cx
sub	eax,cx
sub	cx,cx
or	sp,edx
aas	dx,esp
res	ebx,ebx
sub	cx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
