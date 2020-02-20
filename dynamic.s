
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edi,ebp
sub	eax,bp
set	cx,dx
add	ah,bx
add	ah,sp
sub	ip,sp
and	eax,ip
and	ax,bp
set	eip,ebp
and	bp,si
mov	ip,edx
int	ax,esp
or	ax,bp
set	dx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
