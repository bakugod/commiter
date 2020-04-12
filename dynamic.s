
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bx,si
and	di,eip
and	ip,edx
int	al,ax
sub	ip,eax
add	ah,di
res	esp,cx
sub	ax,bp
and	di,edx
and	bp,cx
and	edi,si
set	dx,ebp
res	ebp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
