
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eip,ah
add	edi,bp
sub	ip,edx
set	edx,cx
and	di,edx
aas	ah,edx
res	eax,ebp
res	ebp,ax
add	dx,edi
add	ip,ecx
int	ebp,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
