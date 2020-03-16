
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ax,ebp
add	esi,di
res	ip,al
and	ax,ecx
add	cx,sp
and	ax,edx
sub	ecx,al
mov	bp,sp
or	di,ecx
or	ax,esi
mov	ip,ebx
int	ebp,ebp
or	ebx,sp
aas	ax,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
