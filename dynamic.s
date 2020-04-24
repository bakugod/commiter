
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	eax,esp
sub	sp,eax
sub	dx,sp
sub	ebx,di
aas	cx,ax
int	ax,esp
or	edx,ah
add	si,di
add	eip,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
