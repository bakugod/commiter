
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eax,sp
sub	ip,ax
set	edi,eip
add	edx,edx
and	ax,sp
and	esp,dx
res	esp,ebp
res	cx,eax
add	edx,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
