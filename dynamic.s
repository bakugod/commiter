
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ax,bp
add	esi,al
and	bp,bp
and	cx,edx
mov	si,al
int	ecx,cx
res	ebp,eip
res	eip,edx
set	edi,di
set	dx,al
sub	eax,esi
add	bx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
