
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	si,edi
add	ecx,sp
aas	dx,dx
set	bp,ecx
sub	esp,eax
mov	ip,ax
or	eax,eax
sub	si,sp
or	si,cx
and	ah,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
