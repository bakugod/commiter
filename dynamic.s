
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebp,ax
int	al,eax
add	ip,ebx
or	ax,eip
and	edx,dx
and	ebx,ecx
int	ip,esp
set	di,bp
sub	di,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
