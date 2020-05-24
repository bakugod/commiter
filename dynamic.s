
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	dx,al
res	bp,dx
sub	bx,di
add	ah,ah
aas	ecx,ip
aas	edi,edx
int	ebx,di
aas	ecx,ip
and	ah,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
