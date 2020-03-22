
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	sp,ip
mov	dx,si
add	sp,al
or	si,dx
mov	al,ebp
sub	bp,edi
or	ecx,esp
res	di,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
