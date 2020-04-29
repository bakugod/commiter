
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esp,sp
mov	ah,si
aas	edi,eax
or	eax,ip
mov	edx,al
aas	bp,edx
sub	esi,dx
sub	eip,ecx
res	ip,eax
and	bx,ebp
sub	ip,eax
sub	esp,ax
res	esp,ebx
add	ebp,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
