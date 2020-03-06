
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	si,eax
sub	esp,eax
add	eip,edi
aas	ebp,al
res	ip,dx
sub	bx,sp
add	ecx,bx
res	ip,esi
set	sp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
