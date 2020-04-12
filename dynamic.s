
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	di,edx
or	bp,ah
add	esi,bx
and	ax,ebx
aas	edi,bx
int	al,ecx
sub	ebx,edi
or	bp,sp
mov	dx,ebx
aas	bx,esp
and	bx,cx
int	bx,edi
add	esi,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
