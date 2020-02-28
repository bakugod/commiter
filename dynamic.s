
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eax,esi
and	bp,edx
or	ebp,bx
aas	di,bx
aas	esi,ah
res	dx,esp
set	ip,di
int	edx,ah
and	al,si
int	bx,cx
sub	ebp,ebx
and	eip,dx
add	edx,bx
res	edx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
