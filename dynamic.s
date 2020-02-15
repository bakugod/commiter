
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	si,edi
sub	cx,sp
and	bp,eax
and	al,eip
aas	ebp,eip
set	bp,ax
sub	edi,bx
aas	ah,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
