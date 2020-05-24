
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esp,edx
aas	ebx,eip
set	bp,eax
add	eip,eax
res	bx,edi
or	ebx,esp
sub	bx,al
sub	edx,sp
and	bp,eip
add	ah,dx
and	si,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
