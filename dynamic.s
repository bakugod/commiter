
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	si,ebp
int	ebp,si
int	esp,cx
sub	esp,ax
res	di,sp
sub	si,eip
or	ecx,esp
set	bx,sp
set	edi,ebx
or	ax,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
