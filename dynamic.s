
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	al,al
aas	eax,cx
or	bx,ebp
res	eax,ax
mov	bp,ebp
sub	bx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
