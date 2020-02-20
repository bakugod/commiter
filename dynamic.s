
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edi,edi
mov	eip,dx
set	si,cx
mov	si,edx
and	bx,edx
and	eax,edx
int	esi,ebp
res	al,esi
or	bx,cx
aas	esp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
