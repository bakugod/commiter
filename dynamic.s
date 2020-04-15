
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	esi,di
or	ax,cx
or	di,ebx
aas	ax,edi
int	cx,edx
res	cx,esp
add	ebx,bx
or	ebp,sp
res	edi,esp
mov	dx,esi
add	eax,ax
res	edi,al
int	esp,ebx
or	bx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
