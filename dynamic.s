
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	bx,al
res	ip,bx
and	esi,bp
aas	bp,sp
sub	ip,dx
mov	eax,dx
res	eax,esp
aas	ah,esi
sub	cx,si
mov	dx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
