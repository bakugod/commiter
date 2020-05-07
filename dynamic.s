
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	cx,al
aas	ebx,edi
and	esi,di
res	eip,sp
mov	edx,sp
set	edi,edx
or	ebp,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
