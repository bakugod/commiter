
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esi,esp
mov	edi,ebx
and	cx,ip
and	ax,bx
res	dx,bx
aas	ebp,sp
sub	di,sp
set	eax,ecx
mov	cx,ah
sub	ip,ah
add	dx,bp
and	di,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
