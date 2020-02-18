
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	di,al
res	ax,cx
aas	eax,eax
or	ebp,dx
or	ebp,eax
set	edx,si
int	ecx,esp
add	eip,eax
sub	eip,ecx
and	ecx,ebx
res	ax,bx
res	ebx,ebx
sub	ax,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
