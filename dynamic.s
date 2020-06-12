
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ecx,sp
int	di,sp
sub	edx,esi
int	ebx,ebp
aas	edx,eip
res	ax,edx
mov	ecx,edx
and	edi,eax
mov	edi,esi
add	edi,edi
set	ip,al
mov	ip,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
