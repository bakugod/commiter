
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	di,bx
aas	esp,edi
aas	al,dx
set	ebx,ebp
mov	ip,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
