
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bp,eax
and	bx,ax
set	dx,bx
sub	cx,edi
int	ebp,cx
or	si,esi
mov	ax,al
or	esi,edx
and	bp,edi
mov	esi,ax
set	bp,si
aas	bp,ip
mov	ebx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
