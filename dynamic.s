
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	edi,ebp
res	cx,esi
and	bp,ax
add	bp,ecx
sub	eip,dx
aas	ecx,ecx
aas	bp,cx
add	edx,ebx
aas	bp,esi
int	cx,eax
set	ax,edx
sub	edx,cx
set	ecx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
