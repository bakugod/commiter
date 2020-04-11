
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	di,eip
mov	esp,eip
res	ecx,ax
or	si,sp
sub	ah,esi
mov	ebx,al
int	ip,ebp
sub	di,sp
aas	eip,ebp
sub	ah,eax
sub	bp,dx
int	eax,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
