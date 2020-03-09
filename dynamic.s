
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	eax,bx
res	si,edx
int	ebx,cx
or	ebp,ecx
aas	ecx,al
aas	eax,di
and	esp,dx
sub	esi,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
