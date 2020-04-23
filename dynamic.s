
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	edx,ip
int	esi,sp
and	edx,ebx
add	sp,eax
add	bx,eax
aas	edx,esp
sub	si,bx
and	eip,edi
res	ebx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
