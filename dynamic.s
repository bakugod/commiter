
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ebx,edx
int	edx,edi
res	ebp,cx
add	ebx,ebx
sub	eax,eip
aas	dx,esi
aas	bp,si
set	edx,di
and	ebx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
