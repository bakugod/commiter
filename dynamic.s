
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebx,cx
or	bx,esi
aas	edi,edi
add	al,esp
mov	dx,cx
add	ax,dx
add	ax,cx
add	di,cx
aas	bp,edx
or	di,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
