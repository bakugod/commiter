
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ecx,edi
set	cx,dx
res	ip,cx
res	esi,sp
int	ecx,ip
mov	di,sp
mov	sp,ax
res	bx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
