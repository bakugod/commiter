
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ax,bp
add	sp,bx
and	ax,eax
or	bp,cx
or	ebp,dx
or	ecx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
