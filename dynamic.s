
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ip,edx
sub	si,di
aas	di,edi
and	ecx,di
add	ecx,ah
sub	ip,edx
aas	esi,ebp
or	cx,ah
or	ebp,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
