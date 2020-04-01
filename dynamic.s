
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ah,esp
or	si,ebx
or	bx,ip
int	si,ah
set	di,ecx
and	di,esp
mov	bx,ip
add	dx,dx
int	ebp,ah
res	si,ecx
aas	bp,bx
int	cx,ebp
and	ax,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
