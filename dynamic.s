
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	esi,dx
int	cx,eip
res	edx,ax
int	cx,eax
add	ecx,di
mov	edx,si
res	di,sp
mov	dx,cx
add	dx,eip
or	edi,cx
and	ip,eax
int	di,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
