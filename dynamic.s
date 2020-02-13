
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	edx,ebp
set	esp,ax
and	edi,ip
aas	bp,edi
sub	eip,bx
add	esp,sp
and	ah,ecx
sub	eax,dx
aas	di,esi
aas	esi,edx
int	bp,ecx
set	di,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
