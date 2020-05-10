
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	al,dx
mov	al,bx
sub	dx,si
mov	ax,edi
aas	eax,di
mov	ax,edi
sub	edi,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
