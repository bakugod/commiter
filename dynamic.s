
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ah,ax
res	ebx,sp
or	eip,bx
int	dx,edi
add	bp,si
res	ebx,ebx
add	cx,sp
aas	esp,bx
aas	ax,ebp
sub	si,sp
and	eax,al
or	edx,dx
sub	esi,dx
add	si,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
