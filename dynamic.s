
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	di,esi
or	edx,edx
set	esi,cx
int	ebp,bx
mov	ebx,ax
sub	ax,ecx
sub	cx,esi
add	sp,si
set	ebp,sp
and	al,ecx
aas	bx,bx
res	ax,al
aas	ah,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
