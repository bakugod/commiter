
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	eax,dx
aas	di,bx
res	cx,esp
res	ax,ah
add	ecx,ip
add	cx,dx
res	ax,bx
set	dx,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
