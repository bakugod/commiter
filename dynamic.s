
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	bp,esi
add	edx,dx
or	ip,ax
aas	edx,sp
mov	cx,dx
and	sp,bp
or	bx,ebp
add	eip,esp
or	cx,sp
set	eax,bp
mov	eip,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
