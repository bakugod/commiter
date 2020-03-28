
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edx,di
set	eip,ebx
mov	edi,eip
and	ip,dx
res	bp,cx
or	bx,dx
int	al,eip
int	si,cx
or	dx,esp
res	eip,esp
add	di,ebp
and	ax,ecx
set	esp,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
