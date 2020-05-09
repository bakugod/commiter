
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ax,bp
res	ecx,ebp
add	al,bx
int	edx,ip
set	bp,bp
sub	ebx,dx
res	ebx,bp
set	bp,esi
sub	esi,ebp
aas	edx,ah
and	al,dx
add	edx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
