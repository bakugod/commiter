
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bp,ecx
and	ecx,edx
set	sp,bp
and	esi,bp
and	edx,al
res	ebp,dx
int	dx,bp
res	edi,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
