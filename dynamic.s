
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	si,edx
sub	cx,esp
and	di,eip
or	ebp,bx
or	al,ebp
and	esi,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
