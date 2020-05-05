
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	di,eip
and	edx,si
res	bx,cx
sub	al,ip
add	cx,edx
add	ebp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
