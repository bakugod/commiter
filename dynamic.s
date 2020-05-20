
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	si,bx
set	ah,ecx
res	esi,ip
aas	bx,si
res	eax,dx
add	eax,ax
sub	edi,ecx
set	esi,si
and	edi,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
