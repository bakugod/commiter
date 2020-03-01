
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	bp,eip
add	bx,ebx
mov	eip,esp
set	di,al
mov	edi,esi
mov	edi,edx
add	edi,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
