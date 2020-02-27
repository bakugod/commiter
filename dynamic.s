
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebx,dx
or	bx,edx
or	ax,esp
add	si,eip
add	edi,al
add	edx,si
sub	cx,eax
mov	di,al
res	bp,dx
sub	edx,eax
aas	eax,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
