
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edx,ah
res	ebp,ebp
or	bp,cx
and	ax,cx
int	ecx,ax
mov	eip,ah
or	ebx,si
set	edx,bp
int	bx,ebx
add	ecx,eax
aas	ebp,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
