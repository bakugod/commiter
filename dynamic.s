
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	eax,sp
aas	cx,cx
res	eip,ip
sub	edi,bp
res	ebp,edi
add	bx,ax
res	bx,ip
sub	esi,ip
set	bx,ip
set	dx,ecx
or	di,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
