
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	edx,si
mov	ip,dx
and	bp,ebx
sub	eax,bp
or	bx,bp
or	cx,esp
add	bx,ebp
set	cx,sp
sub	eip,bp
res	al,eax
add	ebp,ip
mov	eip,edi
mov	si,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
