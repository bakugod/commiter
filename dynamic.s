
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	esi,esi
set	bp,eip
res	edi,edi
res	di,dx
res	bx,cx
res	eax,edi
or	edi,sp
or	ah,ah
res	cx,cx
aas	ebp,sp
int	dx,ip
add	esi,edi
set	edx,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
