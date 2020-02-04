
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ebp,si
sub	eax,ecx
set	al,si
sub	dx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
