
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	bx,ip
add	eip,esp
res	sp,edi
add	eax,cx
int	eax,bp
mov	dx,sp
int	al,al
res	eip,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
