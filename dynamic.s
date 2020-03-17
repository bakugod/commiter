
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebp,dx
mov	edi,ecx
mov	edx,edx
add	eax,ah
or	cx,ebx
and	ebx,edi
set	bx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
