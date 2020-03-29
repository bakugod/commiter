
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	cx,cx
mov	esi,ebx
set	bp,ax
or	ip,sp
add	cx,dx
aas	ebp,si
res	ebp,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
