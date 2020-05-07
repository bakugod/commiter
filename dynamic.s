
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	di,ax
mov	si,si
int	al,ebp
add	eip,esp
or	dx,dx
set	edx,sp
mov	ecx,bx
and	ebx,bx
int	bp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
