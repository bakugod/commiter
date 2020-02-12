
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebp,esp
set	esi,sp
res	ecx,ebp
sub	al,si
aas	ebx,dx
set	ah,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
