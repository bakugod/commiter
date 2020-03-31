
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	si,ebp
aas	eip,ax
or	esp,dx
and	edx,sp
or	bp,si
aas	edi,dx
or	si,edx
res	bx,al
or	eip,ah
res	esi,sp
add	ip,dx
set	dx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
