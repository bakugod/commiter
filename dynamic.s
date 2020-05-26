
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edx,edx
mov	eax,bp
sub	dx,edi
int	ax,al
res	edx,ah
and	ax,esi
set	bx,dx
sub	ebx,ebp
sub	ax,bp
set	bp,di
and	ebx,sp
aas	cx,dx
res	edx,ip
sub	ebx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
