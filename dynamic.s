
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edi,ebx
int	al,eax
mov	dx,ip
aas	di,bp
sub	ebp,bp
set	bx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
