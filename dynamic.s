
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edx,ebx
set	si,sp
and	al,dx
res	ecx,al
sub	dx,eip
int	ax,ebp
int	al,esp
set	ebx,ecx
res	ip,eax
int	ecx,bx
int	di,ebp
set	ecx,eax
and	eip,eax
add	eax,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
