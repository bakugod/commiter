
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bx,dx
int	cx,ecx
set	cx,bp
int	dx,cx
res	eax,si
res	ebp,ah
set	bp,ebp
set	si,eip
sub	eax,ax
sub	ax,dx
add	ah,bp
aas	cx,ecx
res	esi,ip
sub	esp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
