
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	di,si
set	cx,ebp
or	ip,bx
res	esp,ebx
res	esi,esi
int	ip,dx
add	ebx,edx
add	bp,edx
set	eax,ebx
int	bp,ebx
aas	edi,ebp
or	edx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
