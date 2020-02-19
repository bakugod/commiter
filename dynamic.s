
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ebp,sp
sub	di,ax
mov	bx,ip
add	ip,ecx
add	dx,dx
and	ip,eip
set	bx,bx
res	sp,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
