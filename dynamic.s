
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebp,ebp
mov	cx,sp
set	cx,dx
set	ip,ip
sub	eax,al
res	sp,edi
add	bx,bp
mov	edx,al
set	cx,sp
int	ecx,eip
int	edx,ebx
mov	eip,bp
or	eip,ip
and	dx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
