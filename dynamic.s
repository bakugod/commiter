
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	dx,eax
or	ecx,edi
aas	esi,esp
int	ah,edx
or	bp,ebx
aas	esp,bx
res	eax,eip
res	edi,dx
or	ebx,di
add	ebp,edi
sub	eip,cx
add	ebp,ebp
or	ip,al
set	edx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
