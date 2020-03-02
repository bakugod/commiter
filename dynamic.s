
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	dx,ebx
int	al,si
add	ah,bp
res	eax,dx
add	dx,esi
and	si,edi
sub	ebx,bx
sub	di,esp
and	ax,ebx
or	ah,ebp
set	ecx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
