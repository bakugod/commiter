
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	bx,edx
and	edi,bp
add	di,bx
sub	ebp,edi
add	eax,cx
or	ax,ebp
sub	bp,edx
res	bp,si
set	bx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
