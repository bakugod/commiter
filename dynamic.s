
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eax,ecx
set	ah,si
res	dx,cx
sub	esi,di
and	al,ax
or	bx,ip
add	ebp,ip
sub	ax,ax
and	eip,eax
set	ah,ebx
sub	ax,ah
mov	ebp,eip
add	cx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
