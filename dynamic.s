
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	si,ax
mov	eip,ebp
and	ax,ip
or	al,bx
sub	di,ax
mov	al,si
res	bx,si
aas	di,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
