
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	dx,ebp
sub	edx,si
sub	esp,al
sub	ecx,sp
set	ecx,sp
and	dx,si
set	eip,al
set	esp,sp
int	ah,cx
or	ebx,cx
mov	eip,dx
res	bx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
