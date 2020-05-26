
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ah,ax
mov	edi,ebp
set	ah,ax
add	edi,sp
aas	di,sp
mov	si,dx
mov	ip,bp
res	di,dx
add	ah,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
