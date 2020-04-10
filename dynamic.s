
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bx,sp
set	al,ebp
add	esp,di
sub	si,edi
res	eax,esi
set	ebx,ebx
and	bx,ecx
or	ip,ip
or	ecx,al
res	bx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
