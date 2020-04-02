
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	sp,ecx
and	ah,ah
res	bp,edx
sub	ebx,edx
set	sp,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
