
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ecx,si
and	bp,ebp
sub	bp,sp
or	eip,ebp
res	bp,dx
add	edi,si
mov	ip,eip
res	ebp,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
