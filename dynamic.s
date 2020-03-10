
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	bp,bx
res	bx,bp
mov	di,cx
res	dx,ebp
res	edi,ip
sub	bp,eip
set	eax,cx
set	ebx,al
or	edx,bx
mov	ebp,cx
or	ebp,esp
add	dx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
