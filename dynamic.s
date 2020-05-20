
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bx,bp
mov	bx,eax
res	ebp,ip
int	ebp,ip
set	esp,eip
add	eax,ebx
add	bx,esi
aas	esp,cx
res	dx,ebp
add	bp,esp
aas	ax,sp
res	ax,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
