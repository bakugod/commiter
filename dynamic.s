
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ip,edx
sub	ax,sp
set	si,al
set	ebp,sp
res	ip,cx
and	edi,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
