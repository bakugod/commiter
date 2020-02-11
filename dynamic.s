
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ebx,edi
mov	eip,si
aas	edi,dx
mov	al,bx
int	ax,ax
res	eip,cx
add	eax,sp
sub	bp,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
