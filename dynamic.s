
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	sp,al
sub	edx,edi
sub	edx,ebx
int	ebx,eax
and	esi,ah
set	ax,ah
sub	ebx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
