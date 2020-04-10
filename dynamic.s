
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ecx,ax
mov	di,cx
set	bp,dx
res	si,cx
mov	ah,ip
set	bx,edx
and	ax,ecx
int	bp,bp
int	ecx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
