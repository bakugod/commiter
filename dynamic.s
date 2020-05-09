
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ebx,eip
add	esi,ebx
or	ebp,esp
and	sp,bx
add	dx,bx
or	ax,sp
add	edx,al
set	sp,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
