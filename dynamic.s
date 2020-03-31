
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	edi,dx
aas	si,dx
set	eip,bx
set	eip,sp
or	bx,cx
int	bp,ip
sub	al,ip
or	eip,ax
mov	bp,bx
or	sp,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
