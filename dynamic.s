
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ah,ax
res	bx,sp
set	di,esi
or	di,al
int	ah,edx
int	bx,edx
add	di,esi
add	bp,al
or	ecx,di
aas	al,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
