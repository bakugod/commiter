
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	edx,dx
and	eip,ah
int	al,edi
set	ax,di
and	si,al
set	al,bp
and	si,edx
set	ecx,dx
sub	cx,si
or	esi,ecx
res	esp,cx
int	ebx,bx
sub	dx,eip
and	bp,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
