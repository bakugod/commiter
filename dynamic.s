
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	edx,si
res	ax,bx
set	ecx,sp
res	sp,bx
set	edi,edx
or	di,al
res	edx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
