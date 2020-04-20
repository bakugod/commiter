
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	al,ip
sub	di,ax
and	ah,ebx
or	ax,ip
int	dx,eip
and	bx,ebx
mov	esp,dx
sub	edi,edx
sub	si,bp
and	edx,eip
mov	edi,esp
int	dx,esp
add	ip,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
