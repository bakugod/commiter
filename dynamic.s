
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ah,al
or	bx,al
int	ah,eip
int	ax,edi
int	edx,al
add	eax,di
and	al,ax
int	dx,bp
and	ecx,edi
and	esp,bp
and	cx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
