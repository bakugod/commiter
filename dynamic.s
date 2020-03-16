
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	dx,ecx
add	eip,eip
add	ax,ah
int	esi,edx
or	ax,ah
add	ax,dx
mov	eax,bx
mov	edx,ax
or	cx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
