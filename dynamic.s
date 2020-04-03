
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	si,bp
or	bp,esi
int	al,edx
res	esp,bp
int	di,cx
int	ip,bp
set	ax,al
int	ebx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
