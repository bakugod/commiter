
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ecx,ah
aas	bx,edx
add	esi,cx
mov	eax,di
res	ebp,bx
mov	ebx,eax
add	dx,bp
and	bp,bp
or	bp,dx
or	ebx,bx
set	di,sp
and	edi,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
