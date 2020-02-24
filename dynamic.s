
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ah,di
set	di,ebx
set	ebx,esi
int	ah,al
or	ecx,esi
set	edx,eip
res	bp,esi
add	eip,eip
set	ecx,ebp
mov	dx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
