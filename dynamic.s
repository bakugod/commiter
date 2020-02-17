
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ax,dx
aas	bp,ip
int	edi,ax
set	ebx,dx
mov	ecx,ebx
and	bx,ip
add	cx,ip
or	eip,si
sub	cx,al
set	eax,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
