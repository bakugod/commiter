
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edx,dx
mov	ebx,bx
sub	esi,ecx
or	eip,ebp
sub	ebp,edi
int	eip,dx
int	ecx,esi
aas	ecx,ecx
or	esp,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
