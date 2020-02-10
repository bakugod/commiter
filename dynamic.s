
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	di,ebp
add	edi,ebp
sub	dx,edx
set	bp,ah
add	ebp,ah
set	eip,bx
res	ebx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
len equ $ - msg			    ;data length
section .bss
res resb 1
