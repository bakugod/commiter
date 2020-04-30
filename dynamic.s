
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	sp,ax
aas	si,dx
res	edi,ax
res	eip,di
and	di,ebx
int	edi,eip
and	dx,ip
set	esi,edx
res	bx,ip
add	cx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
