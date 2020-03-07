
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	eip,eip
and	eax,esp
sub	eip,bp
mov	bx,sp
int	bx,bx
sub	al,edi
and	eip,si
res	esi,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
