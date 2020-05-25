
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebp,cx
res	si,ip
aas	bx,eax
aas	si,ecx
and	di,edx
add	ebx,ax
sub	eip,edx
and	esp,esp
mov	edx,edi
and	eax,edi
sub	edi,bx
add	ebx,cx
res	esi,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
