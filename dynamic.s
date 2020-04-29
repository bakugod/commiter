
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ip,al
res	eax,ebp
add	ax,sp
add	cx,ebp
int	edx,edi
int	edi,esi
add	ebp,esp
sub	si,bx
int	esp,ax
aas	edi,ebx
int	ah,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
