
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	eax,dx
and	ebx,ax
sub	edi,cx
aas	cx,bx
int	edx,ebx
or	eax,esp
set	cx,bp
add	al,si
sub	esi,bx
res	ip,cx
int	si,al
add	si,si
int	di,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
