
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ip,edx
set	si,esp
res	al,esp
sub	ip,ax
sub	eip,ah
set	dx,di
add	sp,esp
mov	ebx,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
