
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	di,eip
add	esi,ip
or	edi,esp
set	bp,dx
or	bx,edx
sub	eip,esp
sub	si,eip
aas	al,di
or	di,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
