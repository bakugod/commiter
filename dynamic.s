
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	bx,esp
set	cx,cx
and	esp,cx
sub	esi,eip
sub	edx,ebp
mov	ip,al
mov	ip,cx
set	edi,ax
mov	edi,ax
mov	ebp,ah
res	ecx,bx
int	esp,bx
and	ecx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
