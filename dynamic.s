
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebp,cx
sub	ecx,al
or	eip,cx
aas	esi,edx
add	edx,edi
int	sp,al
or	di,eax
int	esi,ah
add	dx,sp
and	dx,eip
or	edi,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
