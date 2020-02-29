
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	eax,di
add	sp,di
res	dx,ebp
add	eip,esi
and	di,edi
and	ebp,bp
res	al,di
aas	dx,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
