
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	edx,sp
set	cx,edx
res	ip,edi
res	ebx,sp
set	ah,di
aas	al,al
or	bx,ecx
int	di,dx
and	esi,si
res	ebx,esp
set	bx,bx
int	eip,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
