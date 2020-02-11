
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edi,dx
or	ax,ebx
and	bp,dx
set	di,si
aas	eip,ebp
add	ah,ecx
aas	di,esp
add	bx,ecx
or	esi,dx
and	di,di
sub	si,edx
set	edi,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
