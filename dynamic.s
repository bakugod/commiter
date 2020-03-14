
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edi,bp
add	ebp,ah
res	bp,cx
mov	ebx,ah
mov	esi,esi
set	ebx,cx
or	al,bx
int	bx,ah
and	al,esp
add	ax,edx
and	bp,ax
sub	cx,edi
add	ax,ah
res	esp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
