
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eax,ebx
int	si,ip
res	esp,edi
res	ebx,ip
sub	ip,eip
add	edx,al
and	bx,cx
res	bx,ebx
or	bx,ecx
add	si,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
