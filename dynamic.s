
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edi,esi
set	dx,sp
int	edi,dx
and	edx,edi
add	esi,bx
and	eax,ecx
sub	eip,cx
set	edi,edx
res	cx,esi
set	edx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
