
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	eax,ax
sub	ip,ah
sub	si,ebx
set	ax,sp
res	dx,bp
or	ecx,esp
and	ip,esp
aas	esi,esp
add	dx,ebp
and	ip,bx
aas	eip,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
