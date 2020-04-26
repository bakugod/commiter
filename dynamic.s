
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	sp,esi
res	dx,edi
int	sp,dx
aas	dx,dx
sub	eax,al
aas	eax,bx
aas	edx,bx
int	ah,sp
sub	si,ah
set	ax,sp
res	ebp,edi
res	edi,edx
set	ebp,dx
int	ebx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
