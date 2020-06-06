
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edx,cx
set	dx,edx
and	di,ecx
res	bx,ecx
aas	edi,edx
mov	ax,esi
set	esp,ecx
and	di,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
