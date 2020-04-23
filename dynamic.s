
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ecx,eax
res	edi,ebp
sub	eip,eip
add	cx,eip
mov	cx,esi
and	ebp,ip
set	edi,eax
aas	edx,sp
add	edi,edi
int	eax,cx
and	eip,ebx
int	ip,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
