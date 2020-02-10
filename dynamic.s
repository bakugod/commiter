
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ax,eip
and	ebp,ebp
aas	eax,ebp
sub	bp,ebx
and	eip,bp
sub	ebp,cx
res	eax,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
