
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	bx,esi
set	esp,edi
res	bx,dx
and	ax,sp
aas	dx,ebx
mov	ecx,ebx
sub	edi,bp
mov	ebx,dx
mov	eax,bp
add	cx,edx
res	eip,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
