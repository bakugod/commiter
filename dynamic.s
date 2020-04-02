
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebx,cx
mov	dx,esi
and	al,ebx
aas	ecx,ax
add	ecx,ebp
mov	edx,di
add	edi,edx
int	cx,ah
sub	bx,cx
or	edi,edx
or	eip,edi
int	edx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
