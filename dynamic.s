
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebp,al
mov	si,bx
sub	ebp,esi
add	cx,ax
aas	di,bp
int	edi,edi
res	eip,ecx
res	bx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
