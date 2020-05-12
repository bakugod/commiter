
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	dx,dx
res	ax,cx
sub	ecx,eax
sub	ah,ebx
int	di,ip
res	bp,bx
int	ebx,bx
set	ah,bx
sub	bx,ip
res	ebx,ax
int	esp,cx
and	ebx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
