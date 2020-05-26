
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	di,esi
int	dx,bx
and	ip,sp
or	ecx,ebp
and	esi,esi
sub	ecx,eax
and	al,dx
or	eax,sp
add	ax,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
