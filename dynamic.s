
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ah,ah
res	eip,edi
set	dx,ah
set	si,al
int	edx,ip
add	ebp,dx
aas	cx,di
and	eax,edx
and	edi,edx
res	edx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
