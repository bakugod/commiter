
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	esi,edi
mov	bx,esi
res	al,ip
set	di,ax
mov	ebx,edx
int	ip,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
