
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	si,bp
int	ax,ah
set	ah,bp
or	ebp,al
int	sp,ebp
set	eax,eax
sub	sp,edi
or	dx,cx
add	di,edi
mov	esp,bp
aas	di,bx
set	al,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
