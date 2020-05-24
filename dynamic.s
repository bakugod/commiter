
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	di,dx
add	cx,ip
int	esi,ecx
mov	ax,ip
or	ah,ip
int	bx,al
res	ecx,esp
mov	edx,cx
sub	eip,ax
mov	ebx,edi
or	al,bx
add	eip,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
