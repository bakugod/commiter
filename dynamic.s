
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	edx,bx
sub	dx,ah
add	ebx,sp
aas	dx,ah
set	ebx,bx
res	sp,ah
mov	ip,eax
add	al,ebx
add	ax,edx
and	ebp,bp
res	bp,edx
add	ebp,sp
aas	bp,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
