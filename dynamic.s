
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	dx,cx
sub	ebp,bx
add	di,dx
set	dx,ecx
res	di,ip
aas	edi,di
or	eax,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
