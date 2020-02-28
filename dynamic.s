
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ip,ip
or	esp,bp
add	ebx,al
set	ebp,dx
and	al,ebp
add	si,ebp
sub	ax,eip
res	ecx,ecx
or	bp,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
