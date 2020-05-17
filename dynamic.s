
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	bx,si
aas	al,sp
sub	si,dx
or	ax,cx
mov	di,bx
mov	si,dx
res	esi,eip
and	esp,ebx
int	di,al
and	edx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
