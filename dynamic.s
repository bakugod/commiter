
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edi,eip
and	eip,eip
sub	ecx,edi
sub	ah,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
