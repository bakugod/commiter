
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edx,cx
or	dx,bx
sub	esi,cx
or	dx,ah
res	ip,cx
res	dx,edx
add	esi,eip
sub	ebx,ebx
set	bx,edx
add	esp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
