
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	bp,ebp
set	ah,bp
or	eax,dx
or	cx,esi
add	ah,ebp
sub	si,ax
mov	edi,cx
and	bx,esp
int	dx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
