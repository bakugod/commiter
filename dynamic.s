
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	bp,cx
mov	ax,ah
add	al,esp
int	si,ah
res	ebx,esi
int	bx,al
res	ax,esp
add	edx,esp
int	dx,al
set	ax,bx
set	al,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
