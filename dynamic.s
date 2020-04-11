
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edi,bx
and	ecx,eip
or	eip,edi
mov	eip,si
int	ebp,dx
set	di,ah
sub	bx,si
or	sp,al
res	dx,ax
res	si,esp
int	si,ax
set	al,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
